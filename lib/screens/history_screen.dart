import 'package:flutter/material.dart';
import 'package:haspr_assignment/components/application_history_item.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/screens/post_ad_screen.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

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
