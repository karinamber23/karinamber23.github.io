import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Access theme data once for cleaner code if needed multiple times
    // final textTheme = Theme.of(context).textTheme;

    return Column( // Main column for the entire section
      crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start (left)
      children: [
        // Row for horizontal layout of Avatar and Name
        Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically in the middle of the row
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 50, // Adjust size as desired
              backgroundColor: GruvboxDark.bg3, // Fallback background if image fails
              // Correct path to the image asset (relative to project root)
              // Make sure 'assets/images/' is declared in pubspec.yaml
              backgroundImage: AssetImage('assets/images/cat300x300.jpg'),
            ),

            // Spacing between avatar and text
            const SizedBox(width: 20),

            // Name Text
            Text(
              'nood-leog', // Your name or desired text
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: GruvboxDark.fg,
                // Optional: Adjust font size slightly if needed
                // fontSize: 40,
              ),
            ),
          ],
        ),

        // Vertical spacing after the Avatar/Name row
        const SizedBox(height: 25), // Adjusted spacing

        // Tagline/Subtitle Text
        Text(
          'Software Developer | Flutter Enthusiast | Lifelong Learner', // Your tagline
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: GruvboxDark.aqua, // Using aqua highlight color
          ),
        ),

        // Vertical spacing before the welcome message
        const SizedBox(height: 16),

        // Welcome Message Text
        Text(
           'Welcome to my personal corner of the web. Here you can find information about my work, projects, and how to get in touch.', // Your welcome text
           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
             color: GruvboxDark.fg2, // Slightly dimmer text color
           ),
         ),
      ],
    );
  }
}