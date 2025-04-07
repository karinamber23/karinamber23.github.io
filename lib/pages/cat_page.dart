import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart'; //theme colors

class CatPage extends StatelessWidget 
{
  const CatPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final textTheme = Theme.of(context).textTheme;
    const double verticalSpacing = 25.0; // Consistent vertical spacing
    const double imageSpacing = 15.0;    // Spacing after images

    return Center( // Keep content centered horizontally
      child: ConstrainedBox
      ( // Limit max width
        constraints: const BoxConstraints(maxWidth: 900),
        child: SingleChildScrollView
        ( // scrolling
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start, // Align text left
            children: 
            [
              // Page Title
              Text
              (
                'Cat Pics',
                style: textTheme.displaySmall?.copyWith
                (
                  color: GruvboxDark.brightOrange, // Highlight color
                ),
              ),
              const SizedBox(height: verticalSpacing / 2),

              // Introductory Paragraph 1 (using RichText for bold)
              RichText
              (
                text: TextSpan
                (
                  // Default style for this paragraph from the theme
                  style: textTheme.bodyLarge?.copyWith(height: 1.5, color: GruvboxDark.fg2),
                  children: const <TextSpan>
                  [
                    TextSpan(text: "Its long been debated as to the best thing to do when getting started building a website. Optimize your content? Tweak the design? No, of course not! The only correct option is to flood it with as many cat pictures as humanly possible. After all, what’s the internet without an abundance of "),
                    // Apply bold style specifically to "FIPO"
                    TextSpan
                    (
                      text: 'Food In Poop Out (FIPO)',
                      style: TextStyle(fontWeight: FontWeight.bold, color: GruvboxDark.fg) // Inherits size/family, overrides weight/color
                    ),
                    TextSpan(text: " critters hapazardly uploaded to its every corner?\n\nLet’s be honest, nothing engages our shrinking attention span like a gallery of cats doing absolutely nothing. In this spirit, here are a few snapshots of my very own FIPOs."),
                  ],
                ),
              ),
              const SizedBox(height: verticalSpacing),

              // Image 1
              _buildCatImage('assets/images/cats/1.jpg'),
              const SizedBox(height: imageSpacing),

              // Paragraph 2
              Text
              (
                'Meet Kipper (grey) and Gillbert (salt-and-pepper). When this photo was taken, Kipper was 11 months and Gillbert was 4 months',
                style: textTheme.bodyMedium?.copyWith(height: 1.4, color: GruvboxDark.fg3),
              ),
              const SizedBox(height: verticalSpacing),

              // Image 2
              _buildCatImage('assets/images/cats/2.jpg'),
              const SizedBox(height: imageSpacing),

              // Paragraph 3
              Text
              (
                "Kipper and Gillberts names both stem from a fish theme, dispite the fact that fish is a rare treat for cats in the wild. Kippers are a \"traditional dish produced by cold-smoking Atlantic herring over wooden oak chips\" and Gillberts namesake being... Gill... from a fish.",
                style: textTheme.bodyMedium?.copyWith(height: 1.4, color: GruvboxDark.fg3),
              ),
              const SizedBox(height: verticalSpacing),

              // Remaining Images (Generated in a loop)
              // Creates images 3.jpg through 21.jpg
              ...List.generate(19, (index) 
              {
                 final imageNumber = index + 3; // Starts from 3
                 return Padding
                 (
                   // Add padding below each image in the gallery part
                   padding: const EdgeInsets.only(bottom: imageSpacing + 5), 
                   child: _buildCatImage('assets/images/cats/$imageNumber.jpg'),
                 );
              }),

              const SizedBox(height: 30), //spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }

  // Helper widgets to build images
  Widget _buildCatImage(String imagePath) 
  {
    return ClipRRect( // add rounded corners to images
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset
      (
        imagePath,
        fit: BoxFit.cover, // Adjust fit as needed
        // error builder for debug
        errorBuilder: (context, error, stackTrace) 
        {
           return Container
           (
             padding: const EdgeInsets.all(20),
             color: GruvboxDark.bg1,
             child: const Center(child: Text('😿 Image not found', style: TextStyle(color: GruvboxDark.red))),
           );
        },
      ),
    );
  }
}