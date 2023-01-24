import 'package:day/first.dart';
import 'package:day/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Image(fit: BoxFit.cover,
                  image: NetworkImage('https://i0.wp.com/rkalert.in/wp-content/uploads/2020/09/Engineers-Day-images-Photo-Pics-Wallpaper-3.jpg?resize=422%2C394&ssl=1'),
                ),
              ),
              Expanded(
                flex: 5,
                child:Container(
                  color: Colors.blueGrey,
                  child: second(),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
