import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/screen_utils.dart';
import '../Utils/strings.dart';


class ResumeSection extends StatelessWidget {
  const ResumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.getWidth(context),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            textAlign: TextAlign.start,
                            'EDUCATION',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          decoration: const BoxDecoration(
                            border: Border( bottom: BorderSide( color:  Colors.green , width: 2))
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        collegeName,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        collegeSubText,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w600, height: 2, fontStyle: FontStyle.italic
                        ),
                      ),
                      Text(
                        collegeSummary,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top: 20 ),
                        child: Text(
                          textAlign: TextAlign.start,
                          higherSecondaryName,
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        higherSecondarySubText,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w600, height: 2, fontStyle: FontStyle.italic
                        ),
                      ),
                      Text(
                        higherSecondarySummary,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                width: ScreenUtils.getWidthPerc(context, 80),
                height: 1,
                color: Colors.black12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            textAlign: TextAlign.start,
                            'WORK',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          decoration: const BoxDecoration(
                              border: Border( bottom: BorderSide( color:  Colors.green , width: 2))
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        companyName,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        companyWorkTitle1,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w600, height: 2, fontStyle: FontStyle.italic
                        ),
                      ),
                      Text(
                        companyWorkExperiance1,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top: 25 ),
                        child: Text(
                          companyWorkTitle2,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                              color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w600, height: 2, fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                      Text(
                        companyWorkExperiance2,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w400, height: 2
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
