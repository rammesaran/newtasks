import 'package:flutter/material.dart';
import 'package:rout/route.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutePath.Homepage2);
          },
          child: Text('Nav to Second Page'),
        ),
      ),
    );
  }
}
