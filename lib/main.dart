import 'package:flutter/material.dart';

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
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                    Text(
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
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Total Balance',
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
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
                children: [
                  SizedBox(
                   height: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        'Tranfer',
                        style: TextStyle(
                            fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
