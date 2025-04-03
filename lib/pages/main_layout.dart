import 'package:flutter/material.dart';
import 'package:nooddev/pages/blog_page.dart';
import 'package:nooddev/pages/cv_page.dart';
import 'package:nooddev/pages/projects_page.dart';
import 'package:nooddev/pages/cat_page.dart';
import 'package:nooddev/theme/gruvbox_theme.dart'; // For theme colors

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0; // Index of the currently selected page

  // List of the pages corresponding to the navigation items
  static const List<Widget> _pages = <Widget>[
    CvPage(),
    ProjectsPage(),
    BlogPage(),
    CatPage(),
  ];

  // List of navigation item labels
  static const List<String> _pageTitles = <String>[
    'CV',
    'Projects',
    'Blog',
    'Cats',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bool isWideScreen = MediaQuery.of(context).size.width > 600; // Example breakpoint

    return Scaffold(
      appBar: AppBar(
        title: Text(
           'nood.dev', // Your site name/brand
           style: textTheme.titleLarge?.copyWith(color: GruvboxDark.brightAqua),
        ),
        // Place navigation items in the 'actions' for right alignment
        actions: List.generate(_pageTitles.length, (index) {
          final bool isSelected = _selectedIndex == index;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 12.0 : 4.0),
            child: TextButton(
              onPressed: () => _onItemTapped(index),
              style: TextButton.styleFrom(
                foregroundColor: isSelected ? GruvboxDark.brightOrange : GruvboxDark.fg2,


                textStyle: textTheme.labelLarge?.copyWith(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                   fontSize: isWideScreen ? 16 : 14,
                ),
                padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 16 : 8, vertical: 10),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(4),
                 ),
              ),
              child: Text(_pageTitles[index]),
            ),
          );
        }),
      ),
      // Display the currently selected page using IndexedStack to preserve state
      body: IndexedStack(
         index: _selectedIndex,
         children: _pages,
       ),
    );
  }
}