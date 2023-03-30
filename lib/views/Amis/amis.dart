import 'package:flutter/material.dart';
import 'package:tiktok_demo/views/Amis/bar_widgets.dart';

class AmisViews extends StatefulWidget {
  const AmisViews({Key? key}) : super(key: key);

  @override
  State<AmisViews> createState() => _AmisViewsState();
}

class _AmisViewsState extends State<AmisViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              AppBarSection(),
            ],),
      ),
    );
  }
}
