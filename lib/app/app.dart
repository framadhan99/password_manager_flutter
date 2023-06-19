import 'package:flutter/material.dart';
import 'package:password_manager_flutter/app/app_theme.dart';
import 'package:password_manager_flutter/config/config.dart';
import 'package:password_manager_flutter/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      navigatorKey: navigatorKey,
      home: const HomePage(),
    );
  }
}
