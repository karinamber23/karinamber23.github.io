import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget 
{
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [

        // --- PROJECT 1 ---
        _buildProjectItem
        (
          context,
          title: 'VR Sorting Algorithm Game',
          description: 'Developed a VR Sorting algorithm game. This project utilized unity and the google cardboard platform. The user is able to play and interact with the game, while being immersed in the environment. Designed to teach sorting algorithms interactively to the user in a fun and interactive environment.',
          technologies: ['C#', 'HCI', 'Unity', 'GUI Design', 'Google Cardboard'],
          // url: 'https://github.com/your_username/vr-sorting-repo', // Optional: Add repo link
        ),

        // --- PROJECT 2 ---
        _buildProjectItem
        (
          context,
          title: 'Car Sales App',
          description: 'Developed a Car Sales app for a fictitious car dealership. The user is able to shop cars listed, viewing photos and relevant information that a buyer would want to see. A car salesman can alter listings the via a GUI interface, adjusting things like price, mileage ect. Other useful tools, like a parts catalog, work orders, and payment calculator were also included.',
          technologies: ['Java', 'Java Swing', 'GUI Design', 'SQLite'],
           // url: 'https://github.com/your_username/car-sales-repo', // Optional: Add repo link
        ),

        // --- PROJECT 3 ---
         _buildProjectItem
         (
          context,
          title: 'Guitar Shop Website',
          description: 'Developed a Guitar Shop Website wherein the user is able to shop for products, place an order and gather any relevant information a buyer looking to shell out dough for an expensive Gibson 335 or sick Ibanez Bass Guitar.',
          technologies: ['PHP', 'HTML/CSS', 'MVC framework', 'GUI Design', 'MySQL', 'WAMP', 'Netbeans'],
           // url: 'https://github.com/your_username/guitar-shop-repo', // Optional: Add repo link
        ),

        // --- THIS WEBSITE ---
         _buildProjectItem(
          context,
          title: 'Personal Portfolio Website (This one!)',
          description: 'My personal CV website built using Flutter Web and hosted on GitHub Pages. Features a custom Gruvbox Dark theme and navigation.',
          technologies: ['Flutter Web', 'Dart', 'GitHub Pages', 'Nix (for IDX)'],
          url: 'https://github.com/nood-leog/nood-leog.github.io', // Link to this repo
        ),
      ],
    );
  }

  Future<void> _launchURL(String urlString) async 
  {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) 
    {
      print('Could not launch $urlString');
    }
  }

  Widget _buildProjectItem(BuildContext context, 
  {
    required String title,
    required String description,
    required List<String> technologies,
    String? url,
  }) 
  {
    return Card
    (
       margin: const EdgeInsets.only(bottom: 20.0),
       child: Padding
       (
         padding: const EdgeInsets.all(16.0),
         child: Column
         (
           crossAxisAlignment: CrossAxisAlignment.start,
           children: 
           [
             Row
             (
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.start, 
               children: 
               [
                  Expanded
                  ( // Allow title to wrap if long
                    child: Text
                    (
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GruvboxDark.brightGreen),
                    ),
                  ),

                 if (url != null)
                   Padding
                   ( // Add padding to space out the icon
                     padding: const EdgeInsets.only(left: 8.0),
                     child: IconButton
                     (
                       icon: const Icon(Icons.link, color: GruvboxDark.blue),
                       tooltip: 'View Project/Code',
                       onPressed: () => _launchURL(url),
                       constraints: const BoxConstraints(), // Remove extra padding from IconButton
                       padding: EdgeInsets.zero,
                       iconSize: 20,
                     ),
                   ),
               ],
             ),
             const SizedBox(height: 8),
             Text(description, style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.4)), // Add line height
             const SizedBox(height: 12),
             Wrap
             (
               spacing: 6.0,
               runSpacing: 4.0,
               children: technologies.map((tech) => Chip
               (
                 label: Text(tech),
                 backgroundColor: GruvboxDark.bg3,
                 labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: GruvboxDark.fg2),
                 padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                 visualDensity: VisualDensity.compact,
                 side: BorderSide.none,
               )).toList(),
             ),
           ],
         ),
       ),
    );
  }
}