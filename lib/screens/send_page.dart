import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constants/color_constants.dart';
import '../models/home_page_choice_chip_model.dart';

class SendPage extends StatelessWidget {
  static const id = 'send_page';
  final List<HomePageChoiceChipModel> choices = [
    HomePageChoiceChipModel(icon: Icons.send, text: "Send"),
    HomePageChoiceChipModel(icon: Icons.call_received, text: "Receive"),
    HomePageChoiceChipModel(icon: Icons.add, text: "Recharge"),
    HomePageChoiceChipModel(icon: Icons.remove, text: "Withdraw"),
    HomePageChoiceChipModel(icon: Icons.gas_meter, text: "Fuel"),
    HomePageChoiceChipModel(icon: Icons.school, text: "School Fee"),
    HomePageChoiceChipModel(icon: Icons.local_activity, text: "Loan"),
  ];
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
            body: Padding(
              padding: const EdgeInsets.symmetric(
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
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          child: Image.asset(
                            "images/Mom.jpg",
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                            // fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Send to:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: choices.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Card(
                                  child: ChoiceChip(
                                    backgroundColor: Colors.white,
                                    // labelStyle: TextStyle(),
                                    label: Container(
                                      width: 70,
                                      height: 50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Icon(choices[index].icon)),
                                          // SizedBox(height: 8),
                                          Expanded(
                                              child: Text(choices[index].text)),
                                        ],
                                      ),
                                    ),
                                    // selected: choices[index].selected,
                                    selected: false,
                                    onSelected: (bool selected) {},
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Information:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Card(
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
                                                  child: Expanded(
                                                    child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          "Send to",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF008BE5),
                                                          ),
                                                          // style: theme.textTheme.caption,
                                                        )),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: kHorizontalPadding,
                                                  child: Expanded(
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      controller:
                                                          mobilePhoneController,
                                                      decoration:
                                                          const InputDecoration(
                                                        hintText: "0900000000",
                                                      ),
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
                                                        "Remark",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF008BE5),
                                                        ),
                                                        // style: theme.textTheme.caption,
                                                      )),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  child: TextField(
                                                    // obscureText: true,
                                                    controller:
                                                        passwordController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: "Remark",
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 27,
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            kHorizontalPadding,
                                                        child: Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Expanded(
                                                              child: Text(
                                                                "Amount",
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF008BE5),
                                                                ),
                                                                // style: theme.textTheme.caption,
                                                              ),
                                                            )),
                                                      ),
                                                      // Expanded(
                                                      // child: Padding(
                                                      //   padding:
                                                      //       kHorizontalPadding,
                                                      //   child: TextField(
                                                      //     keyboardType:
                                                      //         TextInputType
                                                      //             .phone,
                                                      //     controller:
                                                      //         mobilePhoneController,
                                                      //     decoration:
                                                      //         const InputDecoration(
                                                      //       hintText:
                                                      //           "0900000000",
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    // padding: EdgeInsets.symmetric(),
                                    width: double.infinity,
                                    // height: 50,
                                    child: Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Send",
                                          style: TextStyle(
                                              // color: Colors.amber,
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
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
