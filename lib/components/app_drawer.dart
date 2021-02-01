import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/components/menu_item.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/views/home/home_page.dart';
import 'package:foodie_app/views/offers_promo.dart';
import 'package:foodie_app/views/orders.dart';
import 'package:foodie_app/views/privacy_policy.dart';
import 'package:foodie_app/views/profile.dart';
import 'package:foodie_app/views/security.dart';

class AppDrawer extends StatefulWidget {
  static String id = 'app_drawer';
  AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with TickerProviderStateMixin {
  int selectedMenuItemId;

  // final GlobalKey _scaffoldKey = new GlobalKey();
  DrawerScaffoldController controller = DrawerScaffoldController();

  List<Widget> widgets = [
    HomePage(),
    ProfilePage(),
    OrdersPage(),
    OffersPromoPage(),
    PrivacyPolicy(),
    Security()
  ];

  @override
  void initState() {
    selectedMenuItemId = menuWithIcon.items[0].id;
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      // appBar: AppBar(title: Text("Drawer - Scale with Icon"), actions: [
      //   IconButton(
      //       icon: Icon(Icons.add),
      //       onPressed: () {
      //         controller.openDrawer(Direction.left);

      //       })
      // ]),

      drawers: [
        SideDrawer(
          percentage: 0.7,
          drawerWidth: 250,
          menu: menuWithIcon,
          animation: true,
          color: AppColors.primaryColor,
          selectorColor: AppColors.white,
          textStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
            color: AppColors.white,
          ),
          footerView: Text('Sign out'),
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId;
            });
            print(selectedMenuItemId);
          },
        )
      ],
      builder: (context, id) => IndexedStack(
        index: id,
        children: menu.items.map((e) => widgets[selectedMenuItemId]).toList(),
      ),
    );
  }
}
