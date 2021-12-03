import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:haspr_assignment/components/job_card_item.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/components/title_divider.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class SeekerHomeScreen extends StatelessWidget {
  final double screenPadding = 16;
  const SeekerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 25),
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning Pankaj ,',
                      style: TextStyle(fontSize: 16),
                    ),
                    const TitleWidget(
                      title: "Find Your",
                      subtitle: 'Dream Job.',
                      imagePath:
                          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
                      isShowProfilePic: true,
                    ),
                    addVerticalSpace(20),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.grey.shade300,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                Expanded(
                                    child: TextField(
                                  decoration: new InputDecoration.collapsed(
                                      hintText: 'search for a job',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      )),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.settings),
                        )
                      ],
                    ),
                    addVerticalSpace(20),
                    TitleDivider(
                      title: Text(
                        'Popular Jobs',
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: Text(
                        'Show All',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(10),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                margin: EdgeInsets.only(left: screenPadding),
                padding: EdgeInsets.all(16).copyWith(right: 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: JobCardItem(),
                        )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenPadding),
                child: TitleDivider(
                  title: Text(
                    'Jobs Near You.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  margin: EdgeInsets.all(screenPadding).copyWith(bottom: 0),
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      // shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: JobCardItem(),
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
