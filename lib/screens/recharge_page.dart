import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class RechargePage extends StatelessWidget {
  static const id = 'recharge_page';
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
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                      ),
                    ),
                    Text(
                      "Recharge Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
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
                                  "Self",
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
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.amber,
                                    Colors.amber.shade200,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: TextButton(
                                child: Text(
                                  "Others",
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
                    ),
                    Card(
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
                  ],
                ),
              ),
              Expanded(
                child: Center(
                    child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recharge Amount",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
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
                                    "Airtime",
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
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.amber,
                                      Colors.amber.shade200,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: TextButton(
                                  child: Text(
                                    "Package",
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
                      ),
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
                                          overlayShape: RoundSliderOverlayShape(
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
                      )
                    ],
                  ),
                )),
              ),
              Container(
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
                    "Buy Airtime",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
