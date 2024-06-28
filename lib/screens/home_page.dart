import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import '../constants/color_constants.dart';
import '../models/home_page_choice_chip_model.dart';
import '../models/transaction_detail_model.dart';
import './profile_page.dart';
import './send_page.dart';
import './financial_services.dart';
import './qr_code.dart';
import './recharge_page.dart';
import './agent_page.dart';
import './fundraising_page.dart';

class HomePage extends StatelessWidget {
  static const id = 'home_page';
  final List<HomePageChoiceChipModel> choices = [
    HomePageChoiceChipModel(
        icon: Icons.send, text: "Send", onPressed: SendPage.id),
    HomePageChoiceChipModel(
      icon: Icons.call_received,
      text: "Receive",
      onPressed: QRCode.id,
    ),
    HomePageChoiceChipModel(
      icon: Icons.add,
      text: "Recharge",
      onPressed: RechargePage.id,
    ),
    HomePageChoiceChipModel(
      icon: Icons.school,
      text: "Agent",
      onPressed: AgentPage.id,
    ),
    HomePageChoiceChipModel(
      icon: Icons.local_activity,
      text: "Fund Raisng",
      onPressed: FundRaisingPage.id,
    ),
    HomePageChoiceChipModel(
      icon: Icons.remove,
      text: "Withdraw",
      onPressed: null,
    ),
    HomePageChoiceChipModel(
      icon: Icons.gas_meter,
      text: "Fuel",
      onPressed: null,
    ),
  ];

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
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/telebirrlogo.png",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ProfilePage.id);
                          },
                          child: CircleAvatar(
                            // backgroundColor: Colors.transparent,
                            child: Image.asset(
                              "images/telebirrlogo.png",
                            ),
                            radius: 25,
                          ),
                        )
                      ],
                    )),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
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
                                        ),
                                      ),
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
                          Expanded(
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
                                        child: Container(),
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
                                        ],
                                      )),
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, FinancialServices.id);
                                          },
                                          child: Text(
                                            "Financial Services",
                                            style: TextStyle(
                                              color: Colors.white,
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
                        ],
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SendPage.id);
                                // choices[index].onPressed;
                              },
                              child: Container(
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
                                          Icon(choices[index].icon),
                                          SizedBox(height: 8),
                                          Text(choices[index].text),
                                        ],
                                      ),
                                    ),
                                    // selected: choices[index].selected,
                                    selected: false,
                                    onSelected: (bool selected) {
                                      Navigator.pushNamed(
                                          context, choices[index].onPressed);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        children: [
                          // Image.network('https://example.'),
                          // Image.network('https://example.com/image2.jpg'),
                          // Image.network('https://example.com/image3.jpg'),
                          Card(
                            child: Container(
                              width: double.infinity,
                              child: Image.asset(
                                "images/4-2.jpg",
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              width: double.infinity,
                              child: Image.asset(
                                "images/3.jpg",
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              width: double.infinity,
                              child: Image.asset(
                                "images/4-second-color-option.jpg",
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Quick access",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                                // style: ,
                              ),
                              // shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              size: 50,
                              color: Colors.grey,
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
                                            Icon(choices[index].icon),
                                            SizedBox(height: 8),
                                            Text(choices[index].text),
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
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        // scrollDirection: Axis.horizontal,
                        itemCount: transactions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.mobile_friendly),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              transactions[index]
                                                  .transactionTitle,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              transactions[index]
                                                  .transactionDate,
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      "-${transactions[index].amount}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
