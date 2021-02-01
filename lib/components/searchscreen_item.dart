import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SearchScreenItem extends StatelessWidget {
  const SearchScreenItem(
      {Key key,
      @required this.image,
      @required this.foodLabel,
      @required this.foodPrice,
      @required this.containerHeight,
      @required this.containerWidth,
      this.imageHeight,
      this.imageWidth})
      : super(key: key);
  final ImageProvider image;
  final String foodLabel;
  final String foodPrice;
  final double containerHeight;
  final double containerWidth;
  final double imageHeight;
  final double imageWidth;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(context);
      },
      child: Container(
        width: containerWidth,
        height: containerHeight,
        padding: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: image,
                  height: imageHeight,
                  width: imageWidth,
                ),
                YMargin(10),
                Text(
                  foodLabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: AppColors.black,
                  ),
                ),
                YMargin(5),
                Text(
                  foodPrice,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w900,
                    fontSize: 17,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

showBottomSheet(BuildContext context) {
  final Function wp = Screen(context).wp;
  final Function hp = Screen(context).hp;
  int _current = 0;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.90,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: wp(7),
          right: wp(7),
          top: hp(2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.black,
                ),
              ),
            ),
            YMargin(hp(2)),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                Icons.favorite_border,
              )
            ]),
            StatefulBuilder(builder: (context, setState) {
              return Column(
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 7.0,
                        height: 7.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 3.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? AppColors.primaryColor
                                : AppColors.greyShade4),
                      );
                    }).toList(),
                  ),
                ],
              );
            }),
            Expanded(child: YMargin(hp(6))),
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Veggie tomato mix',
                      style: TextStyle(
                        fontFamily: 'SF Pro Rounded',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: AppColors.black,
                      ),
                    ),
                    YMargin(10),
                    Text(
                      'N1,900',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SF Pro Rounded',
                        fontWeight: FontWeight.w900,
                        fontSize: 17,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: YMargin(hp(6))),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery info',
                    style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: AppColors.black,
                    ),
                  ),
                  YMargin(10),
                  Text(
                    'Delivery between Monday and Thursday 9am - 12pm',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 12,
                      color: AppColors.greyShade4,
                    ),
                  ),
                ],
              ),
            ),
            YMargin(hp(3)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Return Policy',
                    style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: AppColors.black,
                    ),
                  ),
                  YMargin(10),
                  Text(
                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 12,
                      color: AppColors.greyShade4,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: YMargin(hp(10))),
            ButtonWidget(
                onPressed: () {},
                label: 'Add to cart',
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.white),
            Expanded(child: YMargin(hp(3))),
          ],
        ),
      ),
    ),
  );
}

final List<String> imgList = [
  'assets/images/food1.png',
  'assets/images/food2.png'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Image.asset(item),
          ),
        ))
    .toList();
