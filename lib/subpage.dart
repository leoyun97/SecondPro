import 'package:flutter/material.dart';

class secondP extends StatelessWidget {
  const secondP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true,title: Text('Second Page'),actions: [Icon(Icons.navigate_before,),],),
        body: Center(child: Text('SecondPage'),),
      ),
    );
  }
}
