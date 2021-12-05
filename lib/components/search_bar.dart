import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class SearchBar extends StatelessWidget {
  final _controller = TextEditingController();
  final Function(String text) callback;
  SearchBar({required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: lightGrey,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          InkWell(
            child: FaIcon(
              FontAwesomeIcons.search,
              size: 15,
              color: Colors.grey.shade700,
            ),
            onTap: () {
              callback(_controller.text);
            },
          ),
          addHorizontalSpace(10),
          Expanded(
            child: TextField(
              onSubmitted: (String text) {
                callback(text);
              },
              controller: _controller,
              decoration: InputDecoration.collapsed(
                  hintText: 'search for a job...',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
