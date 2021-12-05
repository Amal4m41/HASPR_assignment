import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haspr_assignment/components/job_card_item.dart';
import 'package:haspr_assignment/components/search_bar.dart';
import 'package:haspr_assignment/components/title_divider.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class SeekerHomeScreen extends StatelessWidget {
  final double screenPadding = 16;

  const SeekerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      const Text(
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
                              child: SearchBar(
                                callback: (String text) {
                                  showSnackBarMessage(
                                      context: context,
                                      message: 'Searching: $text');
                                },
                              )),
                          const Expanded(
                            flex: 1,
                            child: Icon(Icons.menu),
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
                      color: lightGrey,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  margin: EdgeInsets.only(left: screenPadding),
                  // padding: EdgeInsets.all(16).copyWith(right: 0),
                  child: ListView.builder(
                    padding: EdgeInsets.all(16).copyWith(right: 0),
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: JobCardItem(
                        jobTitle: 'Interior Carpet Designer',
                        isFulltime: true,
                        callback: () {
                          showSnackBarMessage(
                              context: context, message: 'Clicked Apply Now');
                        },
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
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  margin:
                      EdgeInsets.all(screenPadding).copyWith(bottom: 0, top: 0),
                  padding: const EdgeInsets.all(16).copyWith(bottom: 0),
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
                              callback: () {
                                showSnackBarMessage(
                                    context: context,
                                    message: 'Clicked Apply Now');
                              },
                              companyName: 'Badonia & Sons',
                              location: 'Civil Ines, Sagar',
                              salaryDetails: 'upto rs 15000 / month',
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
