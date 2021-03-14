import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive1/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'App responsivo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
