import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tele_birr/screens/qr_code.dart';
import '../constants/color_constants.dart';

class AgentPage extends StatelessWidget {
  static const id = 'agent_page';
  TextEditingController mobilePhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  EdgeInsets kHorizontalPadding = const EdgeInsets.symmetric(horizontal: 16);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: kColorGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: Container(
          padding: EdgeInsets.all(10),
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
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QRCode.id);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Scan QR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.qr_code,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
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
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        "images/9-1.jpg",
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Agent Information:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Form(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: kHorizontalPadding,
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Agent Id",
                                                    style: TextStyle(
                                                      color: Color(0xFF008BE5),
                                                    ),
                                                    // style: theme.textTheme.caption,
                                                  )),
                                            ),
                                            Padding(
                                              padding: kHorizontalPadding,
                                              child: TextField(
                                                keyboardType:
                                                    TextInputType.phone,
                                                controller:
                                                    mobilePhoneController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "Enter Agent Id",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: kHorizontalPadding,
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Operator Id",
                                                    style: TextStyle(
                                                      color: Color(0xFF008BE5),
                                                    ),
                                                    // style: theme.textTheme.caption,
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16),
                                              child: TextField(
                                                // obscureText: true,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "Enter Operator Id",
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 27,
                                            ),
                                            // Container(
                                            //   child: Column(
                                            //     children: [
                                            //       Padding(
                                            //         padding: kHorizontalPadding,
                                            //         child: Align(
                                            //             alignment: Alignment
                                            //                 .centerLeft,
                                            //             child: Text(
                                            //               "Amount",
                                            //               style: TextStyle(
                                            //                 color: Color(
                                            //                     0xFF008BE5),
                                            //               ),
                                            //               // style: theme.textTheme.caption,
                                            //             )),
                                            //       ),
                                            //       Padding(
                                            //         padding: kHorizontalPadding,
                                            //         child: TextField(
                                            //           keyboardType:
                                            //               TextInputType.phone,
                                            //           controller:
                                            //               mobilePhoneController,
                                            //           decoration:
                                            //               const InputDecoration(
                                            //             hintText: "Amount",
                                            //           ),
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              // padding: EdgeInsets.symmetric(),
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(
                                    // color: Colors.amber,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    ));
  }
}
