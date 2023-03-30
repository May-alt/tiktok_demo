import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';

TextEditingController searshController = TextEditingController();


Widget AppBarSection() =>
    Container(
      height: 40,
     // color: Colors.amber,
      child: Row(
        children: [
          Icon(Icons.person_add_alt_1_rounded,color: dwhite,),
          SizedBox(width: 08.0,),
          Expanded(
              child: TextFormField(
                onTap: (){},
                maxLines: 1,
                controller: searshController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:dwhite,width: 1),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color:dwhite,width: 1),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Trouver des amis",
                    hintStyle: TextStyle(color: dwhite,),
                    prefixIcon: Icon(Icons.search, color:dwhite,size: 16,),
                    suffixIcon: Icon(Icons.qr_code_scanner_sharp,color:dwhite,size: 16,)

                ),
              )
          ),
          SizedBox(width: 08.0,),
          Icon(Icons.info_outline,color: dwhite,),
        ],
      ),
    );
