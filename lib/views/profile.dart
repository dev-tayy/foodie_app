import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:responsive_screen/responsive_screen.dart';

enum PaymentOptions { card, bankaccount, abeg }

class ProfilePage extends StatefulWidget {
  static String id = 'profile_page';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PaymentOptions _paymentOptions;
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundShade1,
        padding: EdgeInsets.only(
          left: wp(7),
          right: wp(7),
          top: hp(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.arrow_back_ios, size: 20)),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Container()
                ],
              ),
            ),
            YMargin(10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile Details',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  InkWell(
                    child: Text(
                      'change',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFFF47B0A),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
              YMargin(10),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                shadowColor: Color(0xFFF4F4F7),
                color: AppColors.white,
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  leading: Image(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                  title: Text(
                    'Yusuf Ahmed',
                    style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: AppColors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(),
                      Text(
                        'atytjani@gmail.com',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 13,
                            color: AppColors.grey),
                      ),
                      Divider(),
                      Text(
                        '07063640670',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 13,
                            color: AppColors.grey),
                      ),
                      Divider(),
                      Text(
                        '1, Capt Davies Road, Isefun, Ayobo-Ipaja, Lagos State.',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 13,
                            color: AppColors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Color(0xFFF4F4F7),
              color: AppColors.white,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text(
                  'Orders',
                  style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Color(0xFFF4F4F7),
              color: AppColors.white,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text(
                  'FAQ',
                  style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Color(0xFFF4F4F7),
              color: AppColors.white,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                title: Text(
                  'Sign out',
                  style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black),
              ),
            ),
            YMargin(hp(10)),
            ButtonWidget(
                onPressed: () {},
                label: 'Update',
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
