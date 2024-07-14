
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class EndSection extends StatefulWidget {
  const EndSection({super.key, required this.scrollToTop});

  final Function() scrollToTop;

  @override
  State<EndSection> createState() => _EndSectionState();
}

class _EndSectionState extends State<EndSection> {


  bool _isOver = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.blueGrey,
          height: ScreenUtils.getHeightPerc(context, 20),
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        ),
        Positioned(
          top: -30,
          child: InkWell(
            onTap: widget.scrollToTop,
            onHover: (value){
              if(_isOver != value){
                _isOver = value;
                setState(() {
                });
              }
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: _isOver ? Colors.orange :Colors.grey,
              child: const Icon(Icons.keyboard_arrow_up_rounded , size: 60, color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
