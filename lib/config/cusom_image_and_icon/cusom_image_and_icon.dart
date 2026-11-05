 // ignore_for_file: non_constant_identifier_names, camel_case_types

 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

      SvgPicture getSvgImage({ 
        required String asset,
    double? size,
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    }) {
        return SvgPicture.asset(
         asset,
      width: size ?? width,
      height: size ?? height,
      fit: fit,
      colorFilter: color != null 
          ? ColorFilter.mode(color, BlendMode.srcIn) 
          : null,
        );
    }

class CustomIcons_images {
  static  String topicImage ='assets/images/undraw_blogging_38kl.svg';
  static  String studyImage ='assets/images/17543960_2002.i515.001_modern_students_flat_icons-13.svg';
  static  String MaleImage ='assets/images/354207491_3e37c600-4ca7-474b-94bb-ad2f87f0abc9.svg';
  static  String FmaleImage ='assets/images/366235897_9e8d7b81-3864-4e3d-a241-0e37fab4bf14.svg';
  static  String WebDesign ='assets/images/web design course.svg';
  static String Hospital ='images/10780629_19198564.svg';

}

Widget  getSvgIcon({
   required String asset,
   Color? color,
   double? size,
  
}){
   var colorFilte;
   return SvgPicture.asset(
    asset,
    height: size,
    width: size,
    colorFilter: color!=null?colorFilte.mode(color,BlendMode.srcIn):null
    );
}
class CustomIcons_image {
  static  String topicImage ='images/undraw_blogging_38kl.svg';
  static  String studyImage ='images/17543960_2002.i515.001_modern_students_flat_icons-13.svg';
  static  String MaleImage ='images/354207491_3e37c600-4ca7-474b-94bb-ad2f87f0abc9.svg';
  static  String FmaleImage ='images/366235897_9e8d7b81-3864-4e3d-a241-0e37fab4bf14.svg';

}