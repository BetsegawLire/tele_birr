import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../models/financial_services_model.dart';
import './sanduk_page.dart';
import './mela_page.dart';

class FinancialServices extends StatelessWidget {
  static const id = 'financial_services';
  final List<FinancialServicesModel> services = [
    FinancialServicesModel(
      image: "images/telebirrlogo.png",
      title: "Telebirr Mela",
      buttonText: "Mela",
      route: TelebirrMelaPage.id,
    ),
    FinancialServicesModel(
      image: "images/telebirrlogo.png",
      title: "Telebirr Sanduk",
      buttonText: "Sanduk",
      route: TelebirSansukPage.id,
    ),
    FinancialServicesModel(
      image: "images/telebirrlogo.png",
      title: "Telebirr Endekise",
      buttonText: "Endekise",
      route: null,
    ),
  ];

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
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      CircleAvatar(
                        // backgroundColor: Colors.transparent,
                        child: Image.asset(
                          "images/telebirrlogo.png",
                        ),
                        radius: 25,
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: double.infinity,
                        child: Image.asset(
                          "images/night.jpg",
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Financial Services",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      flex: 2,
                      child: ListView.builder(
                        itemCount: services.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Image.asset(services[index].image),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            services[index].title,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                // Navigator.pushNamed(context, LogInPage.id);
                                              },
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      services[index].route);
                                                },
                                                child: Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          services[index]
                                                              .buttonText,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Icon(
                                                        Icons.forward,
                                                        color: Colors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
