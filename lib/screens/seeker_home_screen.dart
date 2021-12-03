import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:haspr_assignment/components/job_card_item.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/components/search_bar.dart';
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
                        //TODO: to implmenet search bar and change icon from settings
                        Expanded(flex: 6, child: SearchBar()),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.settings),
                        )
                      ],
                    ),
                    TitleDivider(
                      title: RichText(
                        text: const TextSpan(
                            text: 'Popular',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: ' Jobs',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ))
                            ]),
                      ),
                      trailing: const Text(
                        'Show All',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              // addVerticalSpace(10),
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
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: JobCardItem(
                      jobTitle: 'Interior Carpet Designer',
                      isFulltime: true,
                      isShowExperience: true,
                      experienceRequired: '2+ Years Experience',
                      isShowBookmark: true,
                      companyName: 'Badonia & Sons',
                      location: 'Civil Ines, Sagar',
                      salaryDetails: '₹ 15000 / month',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenPadding),
                child: TitleDivider(
                  title: RichText(
                    text: const TextSpan(
                        text: 'Jobs',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        children: [
                          TextSpan(
                              text: ' Near You.',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ))
                        ]),
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
                  margin:
                      EdgeInsets.all(screenPadding).copyWith(bottom: 0, top: 0),
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      // shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: JobCardItem(
                              jobTitle: 'Interior Carpet Designer',
                              isFulltime: true,
                              isShowExperience: false,
                              isShowBookmark: false,
                              companyName: 'Badonia & Sons',
                              location: 'Civil Ines, Sagar',
                              salaryDetails: 'upto rs 15000 / month',
                            ),
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
