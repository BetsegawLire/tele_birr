import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/home_page.dart';
import './screens/send_page.dart';
import './screens/profile_page.dart';
import './screens/financial_services.dart';
import './screens/qr_code.dart';
import './screens/recharge_page.dart';
import './screens/agent_page.dart';
import './screens/otp_page.dart';
import './screens/sanduk_page.dart';
import './screens/mela_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import './screens/fundraising_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LogInPage.id: (context) => LogInPage(),
        HomePage.id: (context) => HomePage(),
        SendPage.id: (context) => SendPage(),
        ProfilePage.id: (context) => ProfilePage(),
        FinancialServices.id: (context) => FinancialServices(),
        QRCode.id: (context) => QRCode(),
        RechargePage.id: (context) => RechargePage(),
        AgentPage.id: (context) => AgentPage(),
        OtpPage.id: (context) => OtpPage(),
        TelebirSansukPage.id: (context) => TelebirSansukPage(),
        TelebirrMelaPage.id: (context) => TelebirrMelaPage(),
        FundRaisingPage.id: (context) => FundRaisingPage(),
      },
      // initialRoute: FundRaisingPage.id,
      // initialRoute: TelebirrMelaPage.id,
      // initialRoute: LogInPage.id,
      // initialRoute: TelebirSansukPage.id,
      // initialRoute: OtpPage.id,
      // initialRoute: AgentPage.id,
      // initialRoute: RechargePage.id,
      // initialRoute: QRCode.id,
      // initialRoute: FinancialServices.id,
      home: AnimatedSplashScreen(
        splash: 'images/telebirrlogo.png',
        nextScreen: LogInPage(),
        nextRoute: LogInPage.id,
        animationDuration: Duration(seconds: 10),
        duration: 10,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}
