
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/work_item.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key, required this.items});


  final List<WorkItem> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(items.length, (index) {
        return Card(
          color: Colors.black87,
          elevation: 10,
          shadowColor: Colors.black38,
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              items[index].title,
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
