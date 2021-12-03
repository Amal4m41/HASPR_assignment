import 'package:flutter/material.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class TitleDivider extends StatelessWidget {
  final Widget title;
  final Widget? trailing;

  const TitleDivider({
    Key? key,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: title),
          trailing != null
              ? Expanded(
                  flex: 1,
                  child: trailing!,
                )
              : addEmptyWidget(),
        ],
      ),
    );
  }
}
