import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:haspr_assignment/components/application_history_item.dart';
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
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    final data = applicationsData[index];
                    print(data);
                    final isCompleted = data['isCompleted'];

                    final itemColor = isCompleted
                        ? Colors.blueGrey.shade900
                        : Colors.red.shade900;

                    return isCompleted
                        ? ApplicationHistoryItem(
                            isCompleted: isCompleted,
                            rating: data['rating'],
                            itemColor: itemColor,
                            designation: data['designation'],
                            companyName: data['companyName'],
                            location: data['location'],
                            isFulltime: data['isFulltime'],
                            salaryDetails: data['salaryDetails'],
                          )
                        : ApplicationHistoryItem(
                            isCompleted: isCompleted,
                            itemColor: itemColor,
                            designation: data['designation'],
                            companyName: data['companyName'],
                            location: data['location'],
                            isFulltime: data['isFulltime'],
                            salaryDetails: data['salaryDetails'],
                          );
                  },
                  itemCount: applicationsData.length),
            )
          ],
        ),
      )),
    );
  }
}

const List<Map<String, dynamic>> applicationsData = [
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': false,
  },
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': true,
    'rating': 3,
  },
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': true,
    'rating': 4,
  },
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': true,
    'rating': 4,
  },
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': true,
    'rating': 4,
  },
  {
    'designation': 'Manager',
    'companyName': 'Badonia & Sons',
    'location': 'Civil lines, Sagar',
    'salaryDetails': '\$ 10-100/month',
    'isFulltime': true,
    'isCompleted': true,
    'rating': 4,
  },
];
