import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/components/delivery_dialog.dart';
import 'package:responsive_screen/responsive_screen.dart';

enum DeliveryOptions { doorDelivery, pickUp }

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  DeliveryOptions _deliveryOptions;
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
                    'Checkout',
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
                  'Delivery',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address Details',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w900,
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
                Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Yusuf Ahmed',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                            Divider(),
                            Text(
                              '1, Capt Davies Road, Isefun, Ayobo-Ipaja, Lagos State.',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 15,
                              ),
                            ),
                            Divider(),
                            Text(
                              '07063640670',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20)))
              ],
            ),
            YMargin(hp(4)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Method',
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
                        leading: Column(
                          children: [
                            Radio(
                              focusColor: AppColors.iconYellow,
                              activeColor: AppColors.iconYellow,
                              groupValue: _deliveryOptions,
                              value: DeliveryOptions.doorDelivery,
                              onChanged: (DeliveryOptions value) {
                                setState(() {
                                  _deliveryOptions = value;
                                });
                              },
                            ),
                          ],
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Door Delivery',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 17,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        subtitle: Divider(),
                      ),
                      ListTile(
                        leading: Column(
                          children: [
                            Radio(
                              focusColor: AppColors.iconYellow,
                              activeColor: AppColors.iconYellow,
                              groupValue: _deliveryOptions,
                              value: DeliveryOptions.pickUp,
                              onChanged: (DeliveryOptions value) {
                                setState(() {
                                  _deliveryOptions = value;
                                });
                              },
                            ),
                          ],
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Pick Up',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 17,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        subtitle: Divider(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            YMargin(hp(24)),
            ButtonWidget(
              buttonColor: AppColors.primaryColor,
              label: "Proceed to Payment",
              onPressed: () async {
                await showDeliveryDialog(context);
              },
              textColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
