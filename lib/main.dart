import 'package:flutter/material.dart';
import 'package:secondpro/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Hello Flutter'),
        // ),
        // body: Center(
        //   child: Text('Hello Flutter'),
        // ),
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    const Text(
                      'Hey, Leoyun',
                      style: TextStyle(
                        fontFamily: '굴림',
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18,
                      ),
                    ),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6), fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '\$5 194 382',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 100,
                  ),
                  roundbutton(
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      txtColor: Colors.black),
                  roundbutton(
                      text: 'Request',
                      bgColor: Color(0xff1f2123),
                      txtColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
