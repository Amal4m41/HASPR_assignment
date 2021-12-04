import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class ApplicationHistoryItem extends StatelessWidget {
  final Color itemColor;
  final String designation;
  final String companyName;
  final String location;
  final String salaryDetails;
  final bool isFulltime;
  final bool isCompleted;
  final int? rating;

  const ApplicationHistoryItem({
    Key? key,
    required this.itemColor,
    required this.designation,
    required this.companyName,
    required this.location,
    required this.salaryDetails,
    required this.isFulltime,
    required this.isCompleted,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  designation,
                  style: TextStyle(
                    color: itemColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                addVerticalSpace(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(companyName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: itemColor)),
                    Text(
                      location,
                      style: TextStyle(fontSize: 9, color: itemColor),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(salaryDetails,
                    style: TextStyle(color: itemColor, fontSize: 10)),
                addVerticalSpace(10),
                RectangularRoundButton(
                    child: Text(
                      isFulltime ? 'Full Time' : 'Part Time',
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    borderRadius: 5,
                    borderWidth: 0,
                    buttonColor: itemColor),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              child: isCompleted
                  ? Column(
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(
                              color: itemColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        addVerticalSpace(8),
                        rating != null
                            ? Row(
                                children: getStarRating(rating!, itemColor),
                              )
                            : addEmptyWidget(),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        'Ongoing',
                        style: TextStyle(
                            color: itemColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(
            thickness: 1.2,
          ),
        )
      ],
    );
  }

  List<Icon> getStarRating(int rating, Color color) {
    final List<Icon> ratingIcons = [];
    for (int i = 0; i < 5; i++) {
      //5-start rating.
      if (i <= rating - 1) {
        ratingIcons.add(Icon(
          Icons.star,
          size: 13,
          color: color,
        ));
      } else {
        ratingIcons.add(Icon(
          Icons.star_border,
          color: color,
          size: 13,
        ));
      }
    }

    return ratingIcons;
  }
}
