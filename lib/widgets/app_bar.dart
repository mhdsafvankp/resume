import 'package:flutter/material.dart';

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
          const AppbarItem(title: 'HOME'),
          const AppbarItem(title: 'ABOUT'),
          const AppbarItem(title: 'RESUME'),
          const AppbarItem(title: 'WORKS'),
          const AppbarItem(title: 'CONTACTS'),
          SizedBox(width: ScreenUtils.getWidthPerc(context, 5)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
