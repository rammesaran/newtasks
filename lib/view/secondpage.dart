import 'package:flutter/material.dart';
import 'package:rout/model/data.dart';

class SecondPage extends StatelessWidget {
  final DataValue dataValue;
  SecondPage({this.dataValue});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Text('entered value is ${dataValue.name}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, true);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
