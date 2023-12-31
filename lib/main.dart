import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/splash/splash_screen.dart';
import 'package:n8_default_project/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: SplashScreen(),
    );
  }
}
