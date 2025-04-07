import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class SectionTitle extends StatelessWidget 
{
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text
      (
        title,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith
        (
          color: GruvboxDark.brightYellow, // highlight color
        ),
      ),
    );
  }
}