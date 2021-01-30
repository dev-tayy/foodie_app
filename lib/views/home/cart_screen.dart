import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/components/cart_item.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:foodie_app/views/home/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

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
                    'Cart',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.touch_app_outlined),
                XMargin(10),
                Text('swipe on an item to delete',
                    style: TextStyle(fontSize: 12, fontFamily: 'SF Pro Text'))
              ],
            ),
            YMargin(hp(4)),
            CartItem(),
            YMargin(hp(3)),
            CartItem(),
            YMargin(hp(3)),
            CartItem(),
            Expanded(child: YMargin(hp(20))),
            ButtonWidget(
              buttonColor: AppColors.primaryColor,
              label: "Proceed to Checkout",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
              textColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundShade3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.remove_shopping_cart,
              size: 100,
              color: AppColors.greyShade5,
            ),
            YMargin(20),
            Text(
              'Oops! Nothing here',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            YMargin(20),
            Text(
              'Navigate to the Home Screen\nto place an order',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
