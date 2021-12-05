import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class JobCardItem extends StatelessWidget {
  final String jobTitle;
  final bool isFulltime;
  final String salaryDetails;
  final String companyName;
  final String experienceRequired;
  final String location;
  final bool isShowBookmark;
  final bool isShowExperience;
  final Function() callback;

  const JobCardItem({
    Key? key,
    required this.jobTitle,
    required this.salaryDetails,
    required this.companyName,
    required this.callback,
    this.experienceRequired = '',
    required this.location,
    this.isFulltime = true,
    this.isShowBookmark = false,
    this.isShowExperience = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              addVerticalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RectangularRoundButton(
                          child: Text(
                            isFulltime ? 'Full Time' : 'Part Time',
                            style: TextStyle(fontSize: 9),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          borderRadius: 5,
                          borderWidth: 1,
                          borderColor: Colors.black,
                          buttonColor: Colors.white),
                      addHorizontalSpace(10),
                      // Text(
                      //   'Salary' + salaryDetails,
                      //   style: TextStyle(fontSize: 11),
                      // ),
                      RichText(
                          text: TextSpan(
                              text: 'Salary ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                              children: [
                            TextSpan(
                                text: 'upto ',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                            TextSpan(
                                text: salaryDetails,
                                style: TextStyle(fontWeight: FontWeight.w400))
                          ])),
                      Spacer(),
                      isShowBookmark
                          ? Icon(Icons.bookmark, color: Colors.lightBlueAccent)
                          : addEmptyWidget()
                    ],
                  ),
                  addVerticalSpace(10),
                  isShowExperience
                      ? Text(
                          experienceRequired,
                          style: TextStyle(fontSize: 11),
                        )
                      : addEmptyWidget(),
                ],
              ),
              addVerticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(companyName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )),
                      Text(
                        location,
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () => callback(),
                    child: const RectangularRoundButton(
                      buttonColor: Colors.red,
                      child: Text(
                        'Apply Now',
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      borderRadius: 10,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
