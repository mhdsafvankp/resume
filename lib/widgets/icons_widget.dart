
import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key, required this.icon});


  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(icon , size: 35, color: Colors.white,);
  }
}
