import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/views/login_screen.dart';
import 'package:responsive_screen/responsive_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static String id = "onboarding_screen";
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: wp(10),
              right: wp(10),
              top: hp(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: hp(4),
                  backgroundColor: AppColors.white,
                  child: Image(
                    image: AssetImage('assets/images/cheflogo.png'),
                  ),
                ),
                YMargin(10),
                Text(
                  'Food for\nEveryone',
                  style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w900,
                      fontSize: 65,
                      color: AppColors.white),
                )
              ],
            ),
          ),
          YMargin(40.0),
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('assets/images/onboarding.png'),
                fit: BoxFit.fill,
                width: wp(100),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: wp(10), right: wp(10), bottom: hp(2)),
            child: ButtonWidget(
                label: 'Get Started',
                buttonColor: AppColors.white,
                textColor: AppColors.primaryColor,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, LoginPage.id);
                }),
          )
        ],
      ),
    ));
  }
}
