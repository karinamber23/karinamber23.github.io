import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class HeroSection extends StatelessWidget 
{
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        Row
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            const CircleAvatar
            (
              radius: 50,
              backgroundColor: GruvboxDark.bg3,
              backgroundImage: AssetImage('assets/images/headshot.jpg'), // Assuming this path is correct
            ),
            const SizedBox(width: 20),
            Text
            (
              'Alex Boyce',
              style: Theme.of(context).textTheme.displayMedium?.copyWith
              (
                color: GruvboxDark.fg,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Text
        (
          'Aspiring Something Engineer | Relentlessly Curious',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith
          (
            color: GruvboxDark.aqua,
          ),
        ),
        const SizedBox(height: 16),
        Text
        (
          'Welcome to my personal corner of the web. Here you can find information about my work, projects, and how to get in touch. Maybe you can find some pictures of my cats if you poke around too :)',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith
          (
            color: GruvboxDark.fg2,
          ),
        ),
      ],
    );
  }
}