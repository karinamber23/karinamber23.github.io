import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

// Placeholder page for the Cat page
class CatPage extends StatelessWidget 
{
  const CatPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.construction_rounded,
              size: 60,
              color: GruvboxDark.yellow,
            ),
            const SizedBox(height: 20),
            Text(
              'Cat pictures Coming Soon!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 10),
             Text(
              'Stay tuned for my cats.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: GruvboxDark.fg3),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}