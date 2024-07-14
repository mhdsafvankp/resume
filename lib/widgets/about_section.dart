import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:my_resume/Utils/strings.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.getWidth(context),
      color: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: ScreenUtils.getWidthPerc(context, 20),
                  backgroundColor: Colors.transparent, // Optional: for a transparent background
                  child: ClipOval(
                    child: Image.asset(
                      'assest/my_photo.jpeg',
                      fit: BoxFit.cover,
                      width: ScreenUtils.getWidthPerc(context, 20),
                      height: ScreenUtils.getWidthPerc(context, 20),
                    ),
                  ),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'About Me',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      mySummary,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        textAlign: TextAlign.start,
                        'Contact Details',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      address,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
