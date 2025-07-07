import 'package:chats/config/theme/app_theme.dart';
import 'package:chats/data/services/service_locator.dart';
import 'package:chats/presentation/screens/auth/login_screen.dart';
import 'package:chats/router/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  await setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chats',
      navigatorKey: getIt<AppRouter>().navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}

