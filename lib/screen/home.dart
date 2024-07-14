import 'package:flutter/material.dart';
import 'package:my_resume/Utils/global_keys.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:my_resume/widgets/about_section.dart';
import 'package:my_resume/widgets/app_bar.dart';
import 'package:my_resume/widgets/appbar_item.dart';
import 'package:my_resume/widgets/end_section.dart';
import 'package:my_resume/widgets/name_widget.dart';
import 'package:my_resume/widgets/resume_section.dart';
import 'package:my_resume/widgets/works_section.dart';

import '../Utils/strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final ScrollController _controller = ScrollController();

  void _scrollTop() {
    _controller.animateTo(
      _controller.position.minScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HorizontalAppBar(),
        body: SingleChildScrollView(
          controller: _controller,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameWidget(
                key: GlobalKeys.top,
                title: 'I\'m $myName',
                subTitle: '$mySimpleSummary',
              ),
              AboutSection(
                key: GlobalKeys.about,
              ),
              ResumeSection(
                key: GlobalKeys.resume,
              ),
              WorksSection(
                key: GlobalKeys.works,
              ),
              EndSection(
                key: GlobalKeys.end,
                scrollToTop: () {
                  _scrollTop();
                },
              )
            ],
          ),
        ));
  }
}
