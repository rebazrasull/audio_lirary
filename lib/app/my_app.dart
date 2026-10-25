import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart'; // 1. Import the package
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. Initialize ScreenUtilPlusInit
    return ScreenUtilPlusInit(
  designSize: const Size(360, 690), // Replace with your Figma/UI design dimensions
  minTextAdapt: true,
  splitScreenMode: true,
  builder: (context, child) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          // Add your theme, darkTheme, and other MaterialApp properties here if needed
        );
      },
    );
  },
);
  }
}