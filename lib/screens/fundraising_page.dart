import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../models/transaction_detail_model.dart';
import '../models/fundraising_model.dart';

class FundRaisingPage extends StatelessWidget {
  static const id = 'funs_raising';

  final List<TransactionDetailModel> transactions = [
    TransactionDetailModel(
        transactionTitle: "Transaction 1",
        transactionDate: "5/16/2023",
        amount: 100),
    TransactionDetailModel(
        transactionTitle: "Transaction 1",
        transactionDate: "5/16/2023",
        amount: 100),
    TransactionDetailModel(
        transactionTitle: "Transaction 1",
        transactionDate: "5/16/2023",
        amount: 100),
    TransactionDetailModel(
        transactionTitle: "Transaction 1",
        transactionDate: "5/16/2023",
        amount: 100),
  ];
  final List<FundRaisingModel> fundraisings = [
    FundRaisingModel(image: "", title: "GERD"),
    FundRaisingModel(image: "", title: "FDRE MINISTRY OF EDUCATION"),
    FundRaisingModel(image: "", title: "FDRE DEFENCE FORCE"),
    FundRaisingModel(image: "", title: "ETHIOPIAN RED CROSS"),
    FundRaisingModel(image: "", title: "MARRY JOY"),
    // FundRaisingModel(image: "", title: "ETHIOPIAN RED CROSS"),
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
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      "images/telebirrlogo.png",
                      scale: 0.75,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Fund Raising",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      itemCount: fundraisings.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                          ),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    // backgroundColor: Colors.white,
                                    child: Image.asset(
                                      "images/telebirrlogo.png",
                                    ),
                                    radius: 25,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${fundraisings[index].title}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          // color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
