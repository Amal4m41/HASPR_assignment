import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';

class NotificationDivider extends StatelessWidget {
  final String dividerTitle;

  const NotificationDivider({Key? key, required this.dividerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          dividerTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1,
              color: lightGrey,
            ),
          ),
        )
      ],
    );
  }
}
