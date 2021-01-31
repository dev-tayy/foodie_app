import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/views/onboarding.dart';
import 'package:responsive_screen/responsive_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    animation = CurvedAnimation(
      curve: Curves.ease,
      parent: animationController,
    );

    animationController.forward();

    animationController.addListener(() {
      setState(() {});
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, OnBoardingScreen.id);
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: AppColors.primaryColor),
          ),
          Material(
            shape: CircleBorder(),
            elevation: 10.0,
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: hp(14),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: FittedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/applogo.png'),
                        ),
                      ),
                      Text(
                        'Food for Everyone',
                        style: TextStyle(
                            fontFamily: 'SF Pro Rounded',
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: AppColors.primaryColor),
                      ),
                      SizedBox(height: animation.value * 30.0),
                      Container(
                        child: CircularProgressIndicator(
                          backgroundColor: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
