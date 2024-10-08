import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jiffy/jiffy.dart';

class Constants
{
  static var appColor = HexColor('#D84D4D');
  static var scaffoldBackGroundColor = HexColor('#242424');

  //date time
  static String dataTime = Jiffy().yMMMd;

  // other
  static void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false
      ..maskType = EasyLoadingMaskType.black;
  }
}

class Images
{
  static const String homeDoctorImage = 'images/home_doctor.png';
  static const String speciality1 = 'images/General.png';
  static const String speciality2 = 'images/Neurologic.png';
  static const String speciality3 = 'images/Pediatric.png';
  static const String speciality4 = 'images/Radiology.png';
}