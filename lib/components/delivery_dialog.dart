import 'package:flutter/material.dart';
import 'package:foodie_app/components/raised_button.dart';
import 'package:foodie_app/utils/colors.dart';
import 'package:foodie_app/views/home/payment_screen.dart';

Future<void> showDeliveryDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: AppColors.backgroundShade1),
          child: Text('Please note',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ),
        titlePadding: EdgeInsets.all(0),
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DELIVERY TO MAINLAND',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: AppColors.greyShade1)),
                    Text('N1000 - N2000',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        )),
                  ],
                ),
              ),
              Divider(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DELIVERY TO MAINLAND',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: AppColors.greyShade1)),
                    Text('N1000 - N2000',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: AppColors.greyShade1),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(width: 10),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()));
              },
              color: AppColors.primaryColor,
              textColor: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: Text(
                  'Proceed',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
