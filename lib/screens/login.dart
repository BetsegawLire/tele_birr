import 'package:flutter/material.dart';
import './home_page.dart';
import './otp_page.dart';
import '../constants/color_constants.dart';

class LogInPage extends StatelessWidget {
  static const id = "login_page";
  String dropdownValue = 'EN'; // set the initial value of the dropdown
  TextEditingController mobilePhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  EdgeInsets kHorizontalPadding = const EdgeInsets.symmetric(horizontal: 16);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: kColorGradient,
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
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
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Image.asset(
                          "images/telebirrlogo.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF008BE5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Expanded(
                    flex: 2,
                    child: Form(
                      child: Column(
                        children: [
                          Expanded(
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
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Mobile Number",
                                                  style: TextStyle(
                                                    color: Color(0xFF008BE5),
                                                  ),
                                                  // style: theme.textTheme.caption,
                                                )),
                                          ),
                                          Padding(
                                            padding: kHorizontalPadding,
                                            child: TextField(
                                              keyboardType: TextInputType.phone,
                                              controller: mobilePhoneController,
                                              decoration: const InputDecoration(
                                                hintText: "0900000000",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 27,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: kHorizontalPadding,
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Password",
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
                                                obscureText: true,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "********",
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: kHorizontalPadding,
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      "Forgot password?",
                                                      style: TextStyle(
                                                        // color: Color(0xFF008BE5),
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                    TextButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                            "Recover Account"))
                                                  ],
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
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.symmetric(),
                            margin: EdgeInsets.only(top: 10),
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, OtpPage.id);
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    // color: Colors.amber,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don not have an account?",
                            style: TextStyle(
                              color: Color(0xFF008BE5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Copyright 1894-2023 Ethio Telecom All Rights Reserved",
                    textAlign: TextAlign.center,
                    // textWidthBasis: ,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
