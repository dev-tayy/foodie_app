import 'package:flutter/material.dart';
import 'package:foodie_app/components/app_drawer.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/views/home/home_page.dart';
import 'package:foodie_app/views/home/search_screen.dart';
import 'package:foodie_app/views/login_screen.dart';
import 'package:foodie_app/views/offers_promo.dart';
import 'package:foodie_app/views/orders.dart';
import 'package:foodie_app/views/privacy_policy.dart';
import 'package:foodie_app/views/profile.dart';
import 'package:foodie_app/views/security.dart';
import 'package:foodie_app/views/splash.dart';
import 'package:foodie_app/views/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie App',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        LoginPage.id: (context) => LoginPage(),
        AppDrawer.id: (context) => AppDrawer(),
        HomePage.id: (context) => HomePage(),
        SearchScreen.id: (context) => SearchScreen(),
        ProfilePage.id: (context) => ProfilePage(),
        OrdersPage.id: (context) => OrdersPage(),
        OffersPromoPage.id: (context) => OffersPromoPage(),
        PrivacyPolicy.id: (context) => PrivacyPolicy(),
        Security.id: (context) => Security(),
      },
    );
  }
}
