import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:haspr_assignment/components/notification_divider.dart';
import 'package:haspr_assignment/components/notification_item.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class PostAdScreen extends StatelessWidget {
  const PostAdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 16, top: 25),
        child: Column(
          children: [
            TitleWidget(title: "Applications", subtitle: 'History.'),
            addVerticalSpace(30),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                  separatorBuilder: (_, index) => Container(
                        height: 100,
                        color: Colors.black,
                      ),
                  itemCount: 6),
            )
          ],
        ),
      )),
    );
  }

  RichText getDummyNotificationMessage() => RichText(
        text: const TextSpan(
            text: 'Your request for ',
            style: TextStyle(color: Colors.black, fontSize: 12),
            children: [
              TextSpan(
                  text: 'Manager',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: ' at ', style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: 'Badonia & sons',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' has been shortlisted. Please contact',
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: ' 9074770963 ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'for further information.',
                  style: TextStyle(color: Colors.black)),
            ]),
      );
}
