import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:responsive_screen/responsive_screen.dart';

enum PaymentOptions { card, bankAccount, abeg }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentOptions _paymentOptions;
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundShade3,
        padding: EdgeInsets.only(
          left: wp(7),
          right: wp(7),
          top: hp(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.arrow_back_ios, size: 20)),
                  Text(
                    'Payment',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Container()
                ],
              ),
            ),
            YMargin(hp(4)),
            Row(
              children: [
                Text(
                  'Payment',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w900,
                      fontSize: 26),
                ),
              ],
            ),
            YMargin(hp(4)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w900,
                      fontSize: 17),
                ),
                YMargin(10),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                      groupValue: _paymentOptions,
                                      value: PaymentOptions.card,
                                      onChanged: (PaymentOptions value) {
                                        setState(() {
                                          _paymentOptions = value;
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
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                      groupValue: _paymentOptions,
                                      value: PaymentOptions.bankAccount,
                                      onChanged: (PaymentOptions value) {
                                        setState(() {
                                          _paymentOptions = value;
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
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/abeg.png'),
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
                                      groupValue: _paymentOptions,
                                      value: PaymentOptions.abeg,
                                      onChanged: (PaymentOptions value) {
                                        setState(() {
                                          _paymentOptions = value;
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
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20)))
              ],
            ),
            Expanded(child: YMargin(hp(35))),
            ButtonWidget(
              buttonColor: AppColors.primaryColor,
              label: "Proceed to Payment",
              onPressed: () {},
              textColor: AppColors.white,
            ),
            YMargin(hp(2)),
          ],
        ),
      ),
    );
  }
}
