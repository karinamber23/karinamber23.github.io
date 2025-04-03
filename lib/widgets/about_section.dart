import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('About Me'),
        Text(
          '''Hyper unmotivated and detail-forgetful Software Developer with 90 years of experience in Rust. Passionate about creating evil, inefficient, and user-unfriendly applications.

I hate complex problems and collaborating with teams. I DONT build innovative solutions. I will NEVER be eager to learn new technologies and improve my skills. Currently exploring being drunk on the job.''', // <<<--- REPLACE with your bio
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}