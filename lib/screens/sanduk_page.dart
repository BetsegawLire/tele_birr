import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class TelebirSansukPage extends StatelessWidget {
  static const id = 'telebirr_sanduk';

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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      width: double.infinity,
                      child: Image.asset(
                        "images/3.jpg",
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Text(
                    "Telebirr Sanduk",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(
                        // vertical: 20,
                        ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 40,
                            ),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Container(
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
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'ETB',
                                              style: TextStyle(
                                                color: Colors.white,
                                                // fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "1,700.00",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Icon(
                                            Icons.card_giftcard_outlined,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "15.00",
                                            style: TextStyle(
                                              color: Colors.amber,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 1,
                                          ),
                                          Text(
                                            "Rewarded",
                                            style: TextStyle(
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Colors.white,
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "View Balance",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
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
                                    "Deposite",
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
                                    "Withdraw",
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
                      ],
                    ),
                  )),
                ],
              )),
        ),
      ),
    );
  }
}
