import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;

import 'package:shafasrm_app/app.dart';
import 'package:shafasrm_app/config/env.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/core/providers/secure_storage_provider.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      final overrides = <Override>[];

      // Initialize FlutterSecureStorage
      final secureStorage = fss.FlutterSecureStorage(
        aOptions: fss.AndroidOptions(
          encryptedSharedPreferences: true,
          preferencesKeyPrefix: 'shafasrm.securestorage',
          resetOnError: true,
        ),
        iOptions: fss.IOSOptions(
          accessibility: fss.KeychainAccessibility.first_unlock,
          accountName: 'shafasrm.keychain',
          synchronizable: false,
        ),
      );

      overrides.add(
        secureStorageInitializerProvider.overrideWithValue(secureStorage),
      );

      final container = ProviderContainer(overrides: overrides);
      container.read(dioInitializerProvider(Env.apiBaseUrl));

      runApp(
        UncontrolledProviderScope(container: container, child: ShafaSRMApp()),
      );
    },
    (error, stackTrace) {
      print(error.toString());
    },
  );
}
