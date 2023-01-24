import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<second>
    with TickerProviderStateMixin {

  late final AnimationController  controller;
  late final Animation<double>    animation;

  void initState(){
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
        animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: const Center(
          child: Text("Happy Engineer's Day" ,
            style: TextStyle(fontSize: 47 , fontWeight: FontWeight.bold , color: Colors.black54)
          ),
        ),
      ),
    );
  }
}
