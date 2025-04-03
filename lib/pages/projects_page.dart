import 'package:flutter/material.dart';
import 'package:nooddev/widgets/projects_section.dart'; // Import the existing section
import 'package:nooddev/theme/gruvbox_theme.dart'; // For styling if needed

// This widget displays the projects section
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use Center and ConstrainedBox for consistency
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: SingleChildScrollView( // Keep it scrollable if many projects
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               // Optional: Add a title specific to this page
               Padding(
                 padding: const EdgeInsets.only(bottom: 20.0),
                 child: Text(
                   'Projects',
                   style: Theme.of(context).textTheme.displaySmall?.copyWith(
                     color: GruvboxDark.brightOrange, // Or another highlight
                   ),
                 ),
               ),
               const ProjectsSection(), // Reuse the widget we already built
               const SizedBox(height: 50), // Add some bottom padding
             ],
          ),
        ),
      ),
    );
  }
}