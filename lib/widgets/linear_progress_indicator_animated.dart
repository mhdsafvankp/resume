import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LinearProgressIndicatorAnimated extends StatelessWidget {
  const LinearProgressIndicatorAnimated({super.key, required this.perc, required this.title});

  final double perc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: GoogleFonts.lato(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 2,),
          ),
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: (perc/ 100)),
            duration: const Duration(seconds: 4),
            builder: (context, value, widget) {
              return LinearProgressIndicator(
                minHeight: 10,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black87),
                backgroundColor: Colors.black38,
                value: value,
              );
            }),
      ],
    );
  }
}
