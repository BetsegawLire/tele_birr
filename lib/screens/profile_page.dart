import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tele_birr/screens/login.dart';

import '../constants/color_constants.dart';

class ProfilePage extends StatelessWidget {
  static const id = 'profile_page';
  String dropdownValue = 'EN'; // set the initial value of the dropdown

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: kColorGradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade700,
                      Colors.lightBlue.shade100,
                    ],
                  ),
                ),
              ),
              Padding(
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
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  "images/telebirrlogo.png",
                                ),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "Betsegaw Lire",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "0904791108",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, LogInPage.id);
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "LogOut",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  )),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Profile")
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.language),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Languages")
                                      ],
                                    ),
                                    DropdownButton<String>(
                                      value: dropdownValue,
                                      onChanged: (value) => null,
                                      style: TextStyle(
                                        color: Colors
                                            .amber, // set the text color of the dropdown options
                                      ),
                                      items: <String>[
                                        'EN',
                                        'AM',
                                        'A/O',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                )),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.security,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Security")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.share,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Invite Friends")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Profile")
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.language),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Languages")
                                      ],
                                    ),
                                    DropdownButton<String>(
                                      value: dropdownValue,
                                      onChanged: (value) => null,
                                      style: TextStyle(
                                        color: Colors
                                            .amber, // set the text color of the dropdown options
                                      ),
                                      items: <String>[
                                        'EN',
                                        'AM',
                                        'A/O',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                )),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.security,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Security")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.share,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Invite Friends")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Version 1.0",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Ethio Telecom 2015 E.C")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 2,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //       colors: [
              //         Colors.green,
              //         Colors.blue,
              //       ],
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 50,
              //   left: 0,
              //   right: 0,
              //   child: Center(
              //     child: Text(
              //       'My Page',
              //       style: TextStyle(
              //         fontSize: 24,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 150,
              //   left: 0,
              //   right: 0,
              //   child: Center(
              //     child: Text(
              //       'Content goes here',
              //       style: TextStyle(
              //         fontSize: 18,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
