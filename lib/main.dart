import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';
// Remove import for home_page.dart if it exists
// import 'package:nooddev/pages/home_page.dart';
import 'package:nooddev/pages/main_layout.dart'; // Import the new layout

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Name - Portfolio', // Change this to your name
      theme: buildGruvboxDarkTheme(),
      debugShowCheckedModeBanner: false,
      // Use MainLayout as the home screen now
      home: const MainLayout(),
    );
  }
}