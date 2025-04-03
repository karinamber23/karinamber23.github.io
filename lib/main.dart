import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';
import 'package:nooddev/pages/home_page.dart'; // We will create this next

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nood.Dev', // Change this to your name
      theme: buildGruvboxDarkTheme(),
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: const HomePage(),
    );
  }
}