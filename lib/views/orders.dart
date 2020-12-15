import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/views/home/home_page.dart';
import 'package:responsive_screen/responsive_screen.dart';

class OrdersPage extends StatelessWidget {
  static String id = 'orders_page';
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {}, child: Icon(Icons.arrow_back_ios, size: 20)),
                Text(
                  'Orders',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Container()
              ],
            ),
          ),
          Container(
            child: Column(
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
                  'Hit the orange button down\nbelow to place an order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: ButtonWidget(
                onPressed: () {
                  Navigator.popAndPushNamed(context, HomePage.id);
                },
                label: 'Start ordering',
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.white),
          )
        ],
      ),
    );
  }
}
