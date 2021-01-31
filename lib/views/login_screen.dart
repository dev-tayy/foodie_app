import 'package:flutter/material.dart';
import 'package:foodie_app/components/app_drawer.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/components/textfield_widget.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
//import 'package:foodie_app/views/home/home_page.dart';
import 'package:responsive_screen/responsive_screen.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_screen';
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController firstNameController;
  TextEditingController lastNameController;
  TextEditingController telNumberController;
  TextEditingController deliveryAddressController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundShade1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 7,
                    blurRadius: 30,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  YMargin(100),
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/images/cheflogo.png'),
                    ),
                  ),
                  SafeArea(
                    child: TabBar(
                      unselectedLabelColor: AppColors.black,
                      labelColor: AppColors.black,
                      indicatorColor: AppColors.primaryColor,
                      indicator: UnderlineTabIndicator(
                        insets: EdgeInsets.symmetric(horizontal: 30.0),
                        borderSide: BorderSide(
                          width: 2.0,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(
                          text: 'Login',
                        ),
                        Tab(
                          text: 'Sign Up',
                        )
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                ],
              ),
            ),
            YMargin(hp(3)),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(wp(7), hp(3), wp(7), 0),
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      //<-- LOGIN PAGE STARTS HERE-->

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email address',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: emailController,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          YMargin(hp(4)),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: passwordController,
                            obscureText: true,
                            maxLines: 1,
                          ),
                          YMargin(hp(4)),
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: AppColors.primaryColor),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, hp(20), 0, 0),
                            child: ButtonWidget(
                                label: 'Login',
                                buttonColor: AppColors.primaryColor,
                                textColor: AppColors.white,
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, AppDrawer.id);
                                }),
                          )
                        ],
                      ),
                    ),

                    //<--SIGN UP PAGE STARTS HERE-->

                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First name',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: firstNameController,
                            keyboardType: TextInputType.name,
                            obscureText: false,
                          ),
                          YMargin(hp(4)),
                          Text(
                            'Last Name',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: lastNameController,
                            keyboardType: TextInputType.name,
                            obscureText: false,
                          ),
                          YMargin(hp(4)),
                          Text(
                            'Email address',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                          ),
                          YMargin(hp(4)),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.greyShade2),
                          ),
                          FormTextField(
                            controller: passwordController,
                            obscureText: true,
                            maxLines: 1,
                          ),
                          YMargin(hp(4)),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, hp(3), 0, 0),
                            child: ButtonWidget(
                                label: 'Sign up',
                                buttonColor: AppColors.primaryColor,
                                textColor: AppColors.white,
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, LoginPage.id);
                                }),
                          )
                        ],
                      ),
                    )
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
