
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarItem extends StatelessWidget {
  const AppbarItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      overlayColor: WidgetStateProperty.resolveWith((states){
        if (states.contains(WidgetState.hovered)) {
          return Colors.orange;
        }
        return Colors.white;
      }),
      onTap: (){
        print('onTap');
      },
      child: Text( title , style:  GoogleFonts.lato(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500
      ),),
    );
  }
}
