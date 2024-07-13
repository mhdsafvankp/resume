import 'package:flutter/material.dart';
import 'package:my_resume/Utils/screen_utils.dart';
import 'package:my_resume/widgets/about_section.dart';
import 'package:my_resume/widgets/app_bar.dart';
import 'package:my_resume/widgets/appbar_item.dart';
import 'package:my_resume/widgets/name_widget.dart';
import 'package:my_resume/widgets/resume_section.dart';

import '../Utils/strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: HorizontalAppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameWidget(
                title: 'I\'m $myName',
                subTitle: '$mySimpleSummary',
              ),
              AboutSection(),
              ResumeSection()
            ],
          ),
        ));
  }
}
