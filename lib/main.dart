import 'package:flutter/material.dart';
import 'package:secondpro/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

void _onClicked() {
  print('Clicked!');
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
        body: SingleChildScrollView(
          child: Padding(
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Wallets',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        )),
                    TextButton(
                      onPressed: _onClicked,
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const piledBox(
                  currency: 'Euro',
                  valueName: '6 428',
                  unitName: 'EUR',
                  moneyIcon: Icons.euro_rounded,
                  isInverted: true,
                ),
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: const piledBox(
                    currency: 'BitCoin',
                    valueName: '5 208',
                    unitName: 'BTC',
                    moneyIcon: Icons.currency_bitcoin,
                    isInverted: false,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -100),
                  child: const piledBox(
                    currency: 'Dollar',
                    valueName: '1 528',
                    unitName: 'USD',
                    moneyIcon: Icons.attach_money_rounded,
                    isInverted: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
