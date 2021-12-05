import 'package:flutter/material.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class NotificationItem extends StatelessWidget {
  final Widget notificationMessage;
  final Widget sinceReceivedDuration;
  final Function() callback;

  const NotificationItem({
    Key? key,
    required this.notificationMessage,
    required this.sinceReceivedDuration,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 5, child: notificationMessage),
        addHorizontalSpace(8),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: callback,
                child: const RectangularRoundButton(
                  child: Center(
                    child: Text(
                      'View',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                  buttonColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  borderRadius: 5,
                  isElevated: true,
                ),
              ),
              addVerticalSpace(8),
              sinceReceivedDuration,
            ],
          ),
        ),
      ],
    );
  }
}
