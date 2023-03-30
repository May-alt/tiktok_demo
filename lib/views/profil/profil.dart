import 'package:flutter/material.dart';
import 'package:tiktok_demo/layouts/const_app_colors.dart';


class ProfilViews extends StatefulWidget {
  const ProfilViews({Key? key}) : super(key: key);

  @override
  State<ProfilViews> createState() => _ProfilViewsState();
}

class _ProfilViewsState extends State<ProfilViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: dwhite,
        elevation: 0.0,
        centerTitle: true,
        title: Text("FoulenBen Foulen"),
        actions: [

        ],
      ),
      body: SafeArea(
       child:Column(
         children: [

         ],
       ),
      ),
    );
  }
}
