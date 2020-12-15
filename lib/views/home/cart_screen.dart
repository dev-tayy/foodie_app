import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

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