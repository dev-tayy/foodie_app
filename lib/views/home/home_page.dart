import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';
import 'package:foodie_app/views/home/cart_screen.dart';
import 'package:foodie_app/views/home/favorites_screen.dart';
import 'package:foodie_app/views/home/history_screen.dart';
import 'package:foodie_app/components/order_item.dart';
import 'package:responsive_screen/responsive_screen.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundShade1,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: AppColors.backgroundShade1,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyShade4,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text(''),
            ),
          ],
        ),
        body: IndexedStack(
          index: currentIndex,
          children: [
            HomeScreen(),
            FavouriteScreen(),
            CartScreen(),
            HistoryScreen()
          ],
        ));
  }
}

class HomeScreen extends StatefulWidget {
  //static
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundShade1,
        padding: EdgeInsets.only(
          left: wp(7),
          right: wp(7),
          top: hp(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: () {}, child: Icon(Icons.menu)),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  YMargin(hp(5)),
                  Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ),
                  YMargin(hp(4)),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: AppColors.black,
                      ),
                      focusColor: AppColors.black,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30)),
                      filled: true,
                      isDense: false,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black),
                      fillColor: AppColors.greyShade3,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: AppColors.greyShade3, width: 0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            YMargin(hp(4)),
            Container(
              margin: EdgeInsets.only(left: wp(3), right: (3)),
              child: Column(children: [
                TabBar(
                    isScrollable: true,
                    unselectedLabelColor: AppColors.greyShade1,
                    labelColor: AppColors.primaryColor,
                    indicatorColor: AppColors.primaryColor,
                    indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.symmetric(horizontal: 65.0),
                      borderSide: BorderSide(
                        width: 2.0,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500),
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        text: 'Foods',
                      ),
                      Tab(
                        text: 'Drinks',
                      ),
                      Tab(
                        text: 'Snacks',
                      ),
                      Tab(
                        text: 'Sauces',
                      ),
                    ]),
              ]),
            ),
            YMargin(hp(3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'see more',
                  style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 15,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
            YMargin(hp(3)),
            Expanded(
              child: Container(
                child: TabBarView(controller: _tabController, children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OrderItem(
                          image: AssetImage('assets/images/food1.png'),
                          foodLabel: 'Veggie\ntomato mix',
                          foodPrice: 'N1,900',
                        ),
                        OrderItem(
                          image: AssetImage('assets/images/food2.png'),
                          foodLabel: 'Veggie\ntomato mix',
                          foodPrice: 'N1,900',
                        ),
                      ],
                    ),
                  ),
                  OrderItem(
                    image: AssetImage('assets/images/food1.png'),
                    foodLabel: 'Veggie\ntomato mix',
                    foodPrice: 'N1,900',
                  ),
                  OrderItem(
                    image: AssetImage('assets/images/food1.png'),
                    foodLabel: 'Veggie\ntomato mix',
                    foodPrice: 'N1,900',
                  ),
                  OrderItem(
                    image: AssetImage('assets/images/food1.png'),
                    foodLabel: 'Veggie\ntomato mix',
                    foodPrice: 'N1,900',
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
