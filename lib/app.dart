import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shafasrm_app/config/theme/theme.dart';
import 'package:shafasrm_app/core/providers/theme_provider.dart';
import 'package:shafasrm_app/core/routes/router.dart';

class ShafaSRMApp extends ConsumerWidget {
  const ShafaSRMApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeMode = ref.watch(themeProviderNotifierProvider);
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      themeMode: themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: router,
      title: 'Shafa',
      debugShowCheckedModeBanner: false,
    );
  }
}