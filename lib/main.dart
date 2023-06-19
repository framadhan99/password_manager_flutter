import 'package:flutter/material.dart';
import 'package:password_manager_flutter/pages/category_page.dart';
import 'package:password_manager_flutter/pages/from_page.dart';
import 'package:password_manager_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CategoryPage(),
    );
  }
}
