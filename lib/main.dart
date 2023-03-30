import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';
import 'package:tiktok_demo/views/app_main/appmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:appbackColors,
        primarySwatch: Colors.blue,
      ),
      home:AppMainViews(),
      debugShowCheckedModeBanner: false,
    );
  }
}
