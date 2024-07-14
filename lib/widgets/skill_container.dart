import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({super.key, required this.titles});

  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(titles.length, (index) {
        return Card(
          color: Colors.black87,
          elevation: 10,
          shadowColor: Colors.black38,
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              titles[index],
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 2,
              ),
            ),
          ),
        );
      }),
    );
  }
}
