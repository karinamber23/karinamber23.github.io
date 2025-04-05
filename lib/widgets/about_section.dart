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
          // --- PASTE YOUR CHOSEN OPTION HERE ---
          '''Currently pursuing dual Bachelor's degrees in Computer Science and Psychology at Central Washington University (CWU), I'm passionate about the intersection of technology and human experience. Complementing my studies, I gain practical insights working as a SOC/NOC Analyst, navigating real-world network operations and cybersecurity challenges. I'm particularly fascinated by the intricacies of firmware development and the immersive potential of XR design and technologies. Outside of the digital realm, I've recently started learning guitar and enjoy the company of my two cats.''',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5), // Added line height for readability
        ),
      ],
    );
  }
}