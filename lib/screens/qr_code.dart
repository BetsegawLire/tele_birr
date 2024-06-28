import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../constants/color_constants.dart';

class QRCode extends StatelessWidget {
  static const id = 'qr_code';
  var height = 180;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: kColorGradient,
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 40,
                        child: Card(
                          elevation: 5,
                          child: CupertinoNavigationBarBackButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Receive Payment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              // backgroundColor: Colors.white,
                              child: Image.asset(
                                "images/telebirrlogo.png",
                              ),
                              radius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Betsegaw Lire",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "0904791108",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        // vertical: 10,
                        ),
                    child: Text(
                      "Scan QR",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrettyQr(
                            // image: AssetImage('images/twitter.png'),
                            typeNumber: 3,
                            size: 200,
                            data: 'https://www.google.ru',
                            errorCorrectLevel: QrErrorCorrectLevel.M,
                            roundEdges: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.lightBlue,
                                    Color(0xFF008BE5),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Center(
                                          child: Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            // color: Colors.red,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              // color: color,
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              // child: child,
                                              child: Icon(Icons.add),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Container(
                                              // height: 40,
                                              // width: 40,
                                              // width: double.infinity,
                                              // color: Colors.red,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  // color: Colors.lightBlue.shade100,
                                                  color: Colors.white12),
                                              child: Center(
                                                child: Text(
                                                  "100",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            // color: Colors.red,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              // color: color,
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              // child: child,
                                              child: Icon(Icons.remove),
                                            ),
                                          )
                                        ],
                                      )),
                                    ),
                                    Expanded(
                                      child: Center(
                                          child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                            activeTrackColor: Colors.amber,
                                            thumbColor: Colors.white,
                                            overlayColor: Colors.white,
                                            thumbShape: RoundSliderThumbShape(
                                                enabledThumbRadius: 15),
                                            overlayShape:
                                                RoundSliderOverlayShape(
                                                    overlayRadius: 30)),
                                        child: Slider(
                                            value: height.toDouble(),
                                            min: 120.0,
                                            max: 220.0,
                                            // activeColor: Color(0xFFEB1555),
                                            inactiveColor: Colors.white,
                                            onChanged: (double newValue) {}),
                                      )),
                                    ),
                                    Expanded(
                                      child: Container(
                                        // height: 40,
                                        // width: 40,
                                        // width: double.infinity,
                                        // color: Colors.red,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            // color: Colors.lightBlue.shade100,
                                            color: Colors.white12),
                                        child: Center(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Reset",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue,
                                  Color(0xFF008BE5),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: TextButton(
                              child: Text(
                                "Apply Deposite Vouchers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )),
      ),
    );
  }
}
