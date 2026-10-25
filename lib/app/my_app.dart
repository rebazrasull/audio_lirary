import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(360, 690), // Figma design dimensions
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp.router(
              // DevicePreview configurations
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              
              // Your router configuration
            );
          },
        );
      },
    );
  }
}