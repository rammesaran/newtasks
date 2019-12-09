import 'package:flutter/material.dart';
import 'package:rout/model/data.dart';
import 'package:rout/view/secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageOne(),
    );
  }
}

class HomePageOne extends StatefulWidget {
  @override
  _HomePageOneState createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  TextEditingController myname = TextEditingController();

  _navigateHome(BuildContext context) {
    DataValue user = DataValue(name: myname.text);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondPage(
                  dataValue: user,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page One'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter the name',
                  labelText: 'Name',
                ),
                controller: myname,
              ),
              RaisedButton(
                onPressed: () {
                  _navigateHome(context);
                },
                child: Text(
                  'submit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
