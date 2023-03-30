import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';

Widget sectionIcons({
  required IconData? icon,
  required String text
}) => Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 05.0),
          height: 70,
          child: Column(children: [
            Icon(icon,size: 35,color: dwhite,),
            Text(text,style: TextStyle(color: dwhite,fontWeight: FontWeight.bold,fontSize: 13),),
          ]),
        ),
      ],
    );
