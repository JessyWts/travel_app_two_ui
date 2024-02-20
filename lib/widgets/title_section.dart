import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  
  const TitleSection({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5
          ),
        ),
        GestureDetector(
          onTap: () {
            
          },
          child: Text(
            'See All',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,letterSpacing: 1.0
            ),
          ),
        ),
      ],
    );
  }
}