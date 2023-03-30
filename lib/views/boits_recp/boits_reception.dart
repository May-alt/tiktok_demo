import 'package:flutter/material.dart';


class BoitsViews extends StatefulWidget {
  const BoitsViews({Key? key}) : super(key: key);

  @override
  State<BoitsViews> createState() => _BoitsViewsState();
}

class _BoitsViewsState extends State<BoitsViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Boits"),
      ),
    );
  }
}
