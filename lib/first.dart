import 'package:flutter/cupertino.dart';

class first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<first> with SingleTickerProviderStateMixin  {

  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration:const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: false);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: RotationTransition(
            child: GalaxyFitz(),
            alignment: Alignment.center,
            turns: _animationController,
          ),
        ),
      ],
    );
  }
}


class GalaxyFitz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(height:double.infinity ,width: double.infinity,
        child: Image(fit: BoxFit.cover,
          image: NetworkImage('data:image/jpeg;base64,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'),
        ),
      ),
    );
  }
}