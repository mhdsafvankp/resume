import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:my_resume/widgets/icons_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.getHeight(context),
      width: ScreenUtils.getWidth(context),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assest/bg.jpeg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: ScreenUtils.getWidthPerc(context, 60),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.lato(
                      color: Colors.white, fontSize: 60, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              width: ScreenUtils.getWidthPerc(context, 60),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16 , bottom: 16),
              child: Container(
                height: 0.5,
                width: ScreenUtils.getWidthPerc(context, 40),
                color: Colors.white,
              ),
            ),
            Container(
              width: ScreenUtils.getWidthPerc(context, 35),
              child:  Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'mailto:mhdsafvankp@gmail.com?subject=Greetings&body=Hello%20World');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch');
                        }
                      },
                      child: const Icon(
                          Icons.email_outlined,
                        size: 40,
                        color: Colors.white,
                      )),
                  InkWell(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.linkedin.com/in/mohamed-safvan-kp/');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch');
                        }
                      },
                      child: const Icon(
                        FontAwesomeIcons.linkedin,
                        size: 40,
                        color: Colors.white,
                      )),
                  InkWell(
                      onTap: () async {
                        int phone = 7034192064;
                        var whatsappUrl = "https://wa.me/${phone}?text=Hello";
                        final Uri url = Uri.parse(
                            whatsappUrl);
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch');
                        }
                      },
                      child: const Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 40,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
