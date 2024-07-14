import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:my_resume/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/work_item.dart';

class WorkItemWidget extends StatefulWidget {
  const WorkItemWidget({super.key, required this.items});

  final List<WorkItem> items;

  @override
  State<WorkItemWidget> createState() => _WorkItemWidgetState();
}

class _WorkItemWidgetState extends State<WorkItemWidget> {
  List<bool> _isOver = [];

  _isOverSetting() {
    for (int i = 0; i < widget.items.length; i++) {
      _isOver.add(false);
    }
  }

  @override
  void initState() {
    super.initState();
    _isOverSetting();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(widget.items.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onHover: (value) {
              if (_isOver[index] != value) {
                _isOver[index] = value;
                setState(() {});
              }
            },
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Container(
                        width: ScreenUtils.getWidthPerc(context, 80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ResponsiveWidget(
                              large: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image taking 50% of the parent's height
                                  Container(
                                    height:
                                        ScreenUtils.getHeightPerc(context, 40),
                                    width:
                                        ScreenUtils.getWidthPerc(context, 80),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                      ),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(widget.items[index].img),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // Text widgets taking the remaining space needed
                                  Container(
                                    color: Colors.blueGrey,
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          widget.items[index].title,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        // Added for spacing between texts
                                        Text(
                                          widget.items[index].desc,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Buttons at the bottom
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Wrap(
                                        children: [
                                          if (widget
                                              .items[index].link.isNotEmpty)
                                            TextButton(
                                              onPressed: () async {
                                                Navigator.of(context).pop();
                                                final Uri url = Uri.parse(
                                                    widget.items[index].link);
                                                if (!await launchUrl(url)) {
                                                  throw Exception(
                                                      'Could not launch');
                                                }
                                              },
                                              child: Text(
                                                'Checkout',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Close',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              small: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image taking 50% of the parent's height
                                  Container(
                                    height:
                                        ScreenUtils.getHeightPerc(context, 25),
                                    width:
                                        ScreenUtils.getWidthPerc(context, 80),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                      ),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(widget.items[index].img),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // Text widgets taking the remaining space needed
                                  Container(
                                    color: Colors.blueGrey,
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          widget.items[index].title,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        // Added for spacing between texts
                                        Text(
                                          widget.items[index].desc,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Buttons at the bottom
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Wrap(
                                        children: [
                                          if (widget
                                              .items[index].link.isNotEmpty)
                                            TextButton(
                                              onPressed: () async {
                                                Navigator.of(context).pop();
                                                final Uri url = Uri.parse(
                                                    widget.items[index].link);
                                                if (!await launchUrl(url)) {
                                                  throw Exception(
                                                      'Could not launch');
                                                }
                                              },
                                              child: Text(
                                                'Checkout',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Close',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: ScreenUtils.getHeightPerc(context, 30),
              width: ScreenUtils.getHeightPerc(context, 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                    ),
                  ],
                  image: DecorationImage(
                      image: AssetImage(widget.items[index].img),
                      fit: BoxFit.cover)),
              child: _isOver[index]
                  ? Container(
                      height: ScreenUtils.getWidth(context) / 6,
                      width: ScreenUtils.getWidth(context) / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black54,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.items[index].title,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                height: 2,
                              ),
                            ),
                            Text(
                              widget.items[index].subTitle,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Icon(
                                  Icons.ads_click,
                                  size: 25,
                                  color: Colors.white,
                                  weight: 1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(padding: EdgeInsets.zero),
            ),
          ),
        );
      }),
    );
  }
}
