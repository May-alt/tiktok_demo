import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';
import 'package:tiktok_demo/views/Accueil/accueil.dart';
import 'package:tiktok_demo/views/Amis/amis.dart';
import 'package:tiktok_demo/views/add_post/add_post.dart';
import 'package:tiktok_demo/views/boits_recp/boits_reception.dart';
import 'package:tiktok_demo/views/profil/profil.dart';

class AppMainViews extends StatefulWidget {
  const AppMainViews({Key? key}) : super(key: key);

  @override
  State<AppMainViews> createState() => _AppMainViewsState();
}

class _AppMainViewsState extends State<AppMainViews> {

int currentIndex = 0;

final tabs = [
  Accueil(),
  AmisViews(),
  AddPost(),
  BoitsViews(),
  ProfilViews(),
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
        backgroundColor: appbackColors,
        elevation: 20.0,
        unselectedItemColor: dgrey,
        selectedItemColor:dwhite,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 12,),
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_filled),
              label: "Accueil",
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.group),
              label: "Amis",
          ),
          BottomNavigationBarItem(
              icon:Image.asset("assets/images/tiktok_add.png",height: 25,),
              label: "home",
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.chat_rounded),
              label: "Boit de réception",
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: "Profil",
           ),


        ],
      ),
    );
  }
}
