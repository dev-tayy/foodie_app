import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:responsive_screen/responsive_screen.dart';

enum DeliveryOptions { card, bankaccount, abeg }

class ProfilePage extends StatefulWidget {
  static String id = 'profile_page';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DeliveryOptions _deliveryOption;
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Information',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                YMargin(10),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/profile.png'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Yusuf Ahmed',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                YMargin(10),
                                Text(
                                  'atytjani@gmail.com',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 13,
                                      color: AppColors.grey),
                                ),
                                YMargin(10),
                                Text(
                                  '1, Capt Davies Road, Isefun,\nAyobo-Ipaja, Lagos State.',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 13,
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                            Icon(Icons.edit)
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20)))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                YMargin(10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.iconYellow,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.credit_card,
                                    color: AppColors.white,
                                  ),
                                  padding: EdgeInsets.all(5),
                                  height: 40,
                                  width: 40,
                                ),
                                XMargin(10),
                                Text(
                                  'Card',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 17,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                        leading: Column(
                          children: [
                            Radio(
                              focusColor: AppColors.iconYellow,
                              activeColor: AppColors.iconYellow,
                              groupValue: _deliveryOption,
                              value: DeliveryOptions.card,
                              onChanged: (DeliveryOptions value) {
                                setState(() {
                                  _deliveryOption = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.iconPink,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.business,
                                    color: AppColors.white,
                                  ),
                                  padding: EdgeInsets.all(5),
                                  height: 40,
                                  width: 40,
                                ),
                                XMargin(10),
                                Text(
                                  'Bank account',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 17,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                        leading: Column(
                          children: [
                            Radio(
                              focusColor: AppColors.iconPink,
                              activeColor: AppColors.iconPink,
                              groupValue: _deliveryOption,
                              value: DeliveryOptions.bankaccount,
                              onChanged: (DeliveryOptions value) {
                                setState(() {
                                  _deliveryOption = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.iconPurple,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image(
                                    image: AssetImage('assets/images/abeg.png'),
                                  ),
                                  padding: EdgeInsets.all(5),
                                  height: 40,
                                  width: 40,
                                ),
                                XMargin(10),
                                Text(
                                  'Abeg',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 17,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                        leading: Column(
                          children: [
                            Radio(
                              focusColor: AppColors.iconPurple,
                              activeColor: AppColors.iconPurple,
                              groupValue: _deliveryOption,
                              value: DeliveryOptions.abeg,
                              onChanged: (DeliveryOptions value) {
                                setState(() {
                                  _deliveryOption = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
