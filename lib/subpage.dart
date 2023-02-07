import 'package:flutter/material.dart';

class secondP extends StatelessWidget {
  const secondP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Second Page'),
          actions: const [
            Icon(
              Icons.navigate_before,
            ),
          ],
        ),
        body: const Center(
          child: Text('SecondPage'),
        ),
      ),
    );
  }
}
