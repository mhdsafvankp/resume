import 'package:flutter/material.dart';

import '../Utils/screen_utils.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, required this.large, required this.small});

  final Widget large;
  final Widget small;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context,
        BoxConstraints constraints) {
       if(ScreenUtils.getWidth(context) <= 900) {
         return small;
       }
      return large;
    });
  }
}
