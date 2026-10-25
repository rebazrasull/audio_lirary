import 'package:audio_library/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // 1. Initialize bindings and capture the instance
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  
  // 2. Preserve the native splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 3. Run the application
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) => const MyApp(),
    ),
  );
}