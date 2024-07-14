import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/widgets/work_item_widget.dart';

import '../Utils/screen_utils.dart';
import '../Utils/strings.dart';
import '../models/work_item.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.getWidth(context),
      color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              checkoutMyPersonalProject,
              textAlign: TextAlign.start,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: WorkItemWidget(items: workList),
            )
          ],
        ),
      ),
    );
  }
}
