import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/utils/margin.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

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
              Icons.event_note,
              size: 100,
              color: AppColors.greyShade5,
            ),
            YMargin(20),
            Text(
              'No history yet',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            YMargin(20),
            Text(
              'Navigate to the home screen to\ncreate an order',
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
