import 'package:flutter/material.dart';
import 'package:nooddev/widgets/about_section.dart';
import 'package:nooddev/widgets/contact_section.dart';
import 'package:nooddev/widgets/experience_section.dart';
import 'package:nooddev/widgets/footer_section.dart';
import 'package:nooddev/widgets/hero_section.dart';
import 'package:nooddev/widgets/skills_section.dart';
import 'package:nooddev/widgets/education_section.dart'; // <-- IMPORT

class CvPage extends StatelessWidget 
{
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center
    (
      child: ConstrainedBox
      (
        constraints: const BoxConstraints(maxWidth: 900),
        child: SingleChildScrollView
        (
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              const HeroSection(),
              const SizedBox(height: 40),
              const AboutSection(),
              const SizedBox(height: 40),
              const EducationSection(), // <-- ADD EDUCATION SECTION HERE
              const SizedBox(height: 40),
              const ExperienceSection(),
              const SizedBox(height: 40),
              const SkillsSection(),
              const SizedBox(height: 40),
              const ContactSection(),
              const SizedBox(height: 50),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}