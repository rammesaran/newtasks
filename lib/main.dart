import 'package:flutter/material.dart';
import 'package:rout/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePath.HomePage1,
      onGenerateRoute: Routers.generateRoutePage,
    );
  }
}
