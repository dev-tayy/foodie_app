import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      direction: Axis.horizontal,
      actionExtentRatio: 0.2,
      secondaryActions: <Widget>[
        IconSlideAction(
          foregroundColor: AppColors.white,
          icon: Icons.favorite_border,
          color: AppColors.backgroundShade3,
          decoration: BoxDecoration(
              color: Color(0xFFDF2C2C), shape: BoxShape.circle),
        ),
        IconSlideAction(
          icon: Icons.delete_outlined,
          foregroundColor: AppColors.white,
          color: AppColors.backgroundShade3,
          decoration: BoxDecoration(
              color: Color(0xFFDF2C2C), shape: BoxShape.circle),
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
                            heroTag: null,
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
                            heroTag: null,
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
    );
  }
}
