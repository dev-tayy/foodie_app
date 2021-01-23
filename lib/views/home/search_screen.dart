import 'package:flutter/material.dart';
import 'package:foodie_app/components/order_item.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  static String id = 'search_screen';
  final String searchText;
  const SearchScreen({Key key, this.searchText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.backgroundShade2,
      child: Column(
        children: [
          Container(
            
            padding: EdgeInsets.only(
              left: wp(7),
              right: wp(7),
              top: hp(8),
              bottom: hp(4),
            ),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 20)),
                SizedBox(width: 20),
                Text(
                  'Spicy Chickens|',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .85,
            padding: EdgeInsets.only(
              left: wp(3),
              right: wp(3),
              top: hp(3),
              bottom: hp(3),
            ),
            decoration: BoxDecoration(
                color: AppColors.greyShade6,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Text(
                  'Found 6 Results',
                  style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 4,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) => OrderItem(
                      containerWidth: wp(38),
                      containerHeight: hp(25),
                      imageHeight: 130.0,
                      imageWidth: 130.0,
                      image: AssetImage('assets/images/food1.png'),
                      foodLabel: 'Veggie\ntomato mix',
                      foodPrice: 'N1,900',
                    ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 3 : 3.5),
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 9.0,

                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
