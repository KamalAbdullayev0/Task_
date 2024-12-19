import 'package:flutter/material.dart';
import 'package:test_/firebase_options.dart';
import 'package:test_/src/config/router/router.dart';
import 'package:test_/src/config/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализация Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      theme: AppTheme.customTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
    );
  }
}
