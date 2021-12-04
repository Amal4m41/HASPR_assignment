import 'package:flutter/material.dart';
import 'package:haspr_assignment/components/notification_divider.dart';
import 'package:haspr_assignment/components/notification_item.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 16, top: 25),
        child: Column(
          children: [
            TitleWidget(title: "Your", subtitle: 'Notifications.'),
            addVerticalSpace(30),
            SingleChildScrollView(
              child: Column(
                children: [
                  NotificationDivider(dividerTitle: 'Today'),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: NotificationItem(
                      notificationMessage: getDummyNotificationMessage(),
                      sinceReceivedDuration: RichText(
                        text: TextSpan(
                            text: '9',
                            style: TextStyle(
                                color: lightGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: ' min ago',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11))
                            ]),
                      ),
                    ),
                  ),
                  addVerticalSpace(10),
                  NotificationDivider(dividerTitle: 'Older'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: NotificationItem(
                      notificationMessage: getDummyNotificationMessage(),
                      sinceReceivedDuration: Text(
                        'Yesterday',
                        style: TextStyle(color: lightGrey, fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
