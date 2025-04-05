import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  // --- UPDATED SKILLS ---
  final Map<String, List<String>> skillsByCategory = const {
    'Programming Languages': ['C', 'C#', 'Python', 'Java', 'JavaScript', 'SQL', 'PHP', 'HTML/CSS', 'Flutter/Dart'],
    'Development Tools': ['Git', 'JetBrains IDEs', 'Visual Studio / VS Code', 'NetBeans', 'Unity', 'LaTeX'],
    'Operating Systems': ['Windows', 'WSL', 'Debian Linux', 'Cisco IOS', 'Junos OS'],
    'Cybersecurity, NetOps, & Monitoring': ['SentinelOne', 'CrowdStrike', 'Elastic', 'Sumo Logic', 'SecureCRT'],
    'Collaboration & Project Management': ['Jira', 'Github Projects', 'Dialpad'],
    'Design & Productivity': ['Figma', 'Canva', 'Excel', 'Word', 'PowerPoint'],
    'Database': ['MySQL', 'SQLite', 'Firebase'],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Tools & Technologies'), // Changed title slightly
        ListView.builder( // Using ListView for better structure with categories
          shrinkWrap: true, // Important inside a Column
          physics: const NeverScrollableScrollPhysics(), // Disable scrolling within the list itself
          itemCount: skillsByCategory.length,
          itemBuilder: (context, index) {
            String category = skillsByCategory.keys.elementAt(index);
            List<String> skills = skillsByCategory[category]!;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GruvboxDark.brightYellow), // Category title style
                  ),
                  const SizedBox(height: 8.0),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 6.0,
                    children: skills.map((skill) => Chip(
                      label: Text(skill),
                      backgroundColor: GruvboxDark.bg2,
                      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: GruvboxDark.fg),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      side: BorderSide.none,
                      visualDensity: VisualDensity.compact, // Keep chips relatively small
                    )).toList(),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}