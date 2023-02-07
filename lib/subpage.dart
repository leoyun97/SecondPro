import 'package:flutter/material.dart';

class SecondP extends StatelessWidget {
  const SecondP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Second Page'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.navigate_before,
              ),
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
