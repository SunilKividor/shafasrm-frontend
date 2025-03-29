import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shafasrm_app/config/theme/theme.dart';
import 'package:shafasrm_app/core/providers/theme_provider.dart';
import 'package:shafasrm_app/features/onboarding/onboarding.dart';

class ShafaSRMApp extends ConsumerWidget {
  const ShafaSRMApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeMode = ref.watch(themeProviderNotifierProvider);
    return MaterialApp(
      themeMode: themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      title: 'Shafa',
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Onboarding();
      },
    );
  }
}