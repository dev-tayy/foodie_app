import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:responsive_screen/responsive_screen.dart';

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
            YMargin(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.touch_app_outlined),
                XMargin(10),
                Text('swipe on an item to delete',
                    style: TextStyle(fontSize: 12, fontFamily: 'SF Pro Text'))
              ],
            ),
            YMargin(15),
            Slidable(
              actionPane: SlidableDrawerActionPane(),
              direction: Axis.horizontal,
              actionExtentRatio: 0.2,
              secondaryActions: <Widget>[
                IconSlideAction(
                  icon: Icons.favorite_border,
                  color: AppColors.white,
                  decoration: BoxDecoration(color: Color(0xFFDF2C2C), shape: BoxShape.circle, border:  ),
                ),
                IconSlideAction(
                  icon: Icons.delete,
                  color: AppColors.white,
                  decoration: BoxDecoration(color: Color(0xFFDF2C2C),),
                ),
              ],
              child: GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Color(0xFFF4F4F7),
                  color: AppColors.white,
                  child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: Image(
                        image: AssetImage('assets/images/food1.png'),
                      ),
                      title: Text(
                        'Veggie tomato mix',
                        style: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: AppColors.black,
                        ),
                      ),
                      subtitle: Text(
                        'N1,900',
                        style: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      trailing: Container(
                          height: 50,
                          width: 60,
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: FittedBox(
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    backgroundColor: AppColors.primaryColor,
                                    elevation: 0,
                                    child: Icon(
                                      Icons.remove,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              XMargin(5),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Rounded', fontSize: 18),
                              ),
                              XMargin(5),
                              Container(
                                height: 20,
                                width: 20,
                                child: FittedBox(
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    backgroundColor: AppColors.primaryColor,
                                    elevation: 0,
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))),
                ),
              ),
            )
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
