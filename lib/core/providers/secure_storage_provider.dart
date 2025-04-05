import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

part 'generated/secure_storage_provider.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorageInitializer(SecureStorageInitializerRef ref) {
  throw UnimplementedError(
    'The secure storage initializer must be implemented in the platform-specific code'
  );
}

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(SecureStorageServiceRef ref) {
  final secureStorage = ref.watch(secureStorageInitializerProvider);
  return SecureStorageService(secureStorage);
}

class SecureStorageService {
  final FlutterSecureStorage _storage;
  final _lock = Lock();

  SecureStorageService(this._storage);

  String _hashKey(String key) {
    var bytes = utf8.encode(key); // Convert the string to bytes
    var digest = sha256.convert(bytes); // Create SHA256 hash
    return digest.toString();
  }

  Future<String?> read(String key) async {
    return _lock.synchronized(() async {
      try {
        final hashedKey = _hashKey(key);
        final value = await _storage.read(key: hashedKey);
        print('Read value for key: $key');
        return value;
      } catch (e) {
        print('Failed to read value for key: $key');
        return null;
      }
    });
  }

  Future<void> write(String key, String value) async {
    return _lock.synchronized(() async {
      try {
        final hashedKey = _hashKey(key);
        await _storage.write(key: hashedKey, value: value);
        print('Wrote value for key: $key');
      } catch (e) {
        print('Failed to write value for key: $key');
        rethrow;
      }
    });
  }

  Future<void> delete(String key) async {
    return _lock.synchronized(() async {
      try {
        final hashedKey = _hashKey(key);
        await _storage.delete(key: hashedKey);
        print('Deleted value for key: $key');
      } catch (e) {
        print('Failed to delete value for key: $key');
        rethrow;
      }
    });
  }

  Future<void> deleteAll() async {
    return _lock.synchronized(() async {
      try {
        await _storage.deleteAll();
        print('Deleted all stored values');
      } catch (e) {
        print('Failed to delete all stored values');
        rethrow;
      }
    });
  }

  Future<Map<String, String>> readAll() async {
    return _lock.synchronized(() async {
      try {
        final allValues = await _storage.readAll();
        print('Read all stored values');
        return allValues;
      } catch (e) {
        print('Failed to read all stored values');
        return {};
      }
    });
  }

  Future<bool> containsKey(String key) async {
    return _lock.synchronized(() async {
      try {
        final hashedKey = _hashKey(key);
        final containsKey = await _storage.containsKey(key: hashedKey);
        print('Checked if key exists: $key');
        return containsKey;
      } catch (e) {
        print('Failed to check if key exists: $key');
        return false;
      }
    });
  }
}

class Lock {
  Completer<void>? _completer;

  Future<T> synchronized<T>(Future<T> Function() computation) async {
    while (_completer != null) {
      await _completer!.future;
    }

    _completer = Completer<void>();
    try {
      return await computation();
    } finally {
      _completer!.complete();
      _completer = null;
    }
  }
}