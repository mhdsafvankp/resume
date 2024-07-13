

import 'package:flutter/cupertino.dart';

class ScreenUtils {


  static Size getScreenSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static double getWidth(BuildContext context){
    return getScreenSize(context).width;
  }

  static double getHeight(BuildContext context){
    return getScreenSize(context).height;
  }


  static double getHeightPerc(BuildContext context, int perc){
    return percConversion(getHeight(context) * perc);
  }

  static double getWidthPerc(BuildContext context, int perc){
    return percConversion(getWidth(context) * perc);
  }


  static double percConversion(double value){
    return value / 100;
  }





}