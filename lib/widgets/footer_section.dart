import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '© ${DateTime.now().year} Alex Boyce. Built with Flutter on github pages.', 
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: GruvboxDark.fg4,
        ),
      ),
    );
  }
}