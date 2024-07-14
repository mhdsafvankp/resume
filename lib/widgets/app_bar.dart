import 'package:flutter/material.dart';
import 'package:my_resume/Utils/global_keys.dart';

import '../Utils/screen_utils.dart';
import 'appbar_item.dart';



class HorizontalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HorizontalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.black87,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: ScreenUtils.getWidthPerc(context, 5)),
          AppbarItem(title: 'HOME', scrollTo: (){
            Scrollable.ensureVisible(GlobalKeys.top.currentContext!, duration: Duration(seconds: 1));
            },),
          AppbarItem(title: 'ABOUT', scrollTo: (){
            Scrollable.ensureVisible(GlobalKeys.about.currentContext!, duration: Duration(seconds: 1));
          },),
          AppbarItem(title: 'RESUME', scrollTo: (){
            Scrollable.ensureVisible(GlobalKeys.resume.currentContext!, duration: Duration(seconds: 1));
          },),
          AppbarItem(title: 'WORKS', scrollTo: (){
            Scrollable.ensureVisible(GlobalKeys.works.currentContext!, duration: Duration(seconds: 1));
          }),
          // AppbarItem(title: 'CONTACTS', scrollTo: (){}),
          SizedBox(width: ScreenUtils.getWidthPerc(context, 5)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
