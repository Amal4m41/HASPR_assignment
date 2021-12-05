import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:haspr_assignment/components/application_history_item.dart';
import 'package:haspr_assignment/components/notification_divider.dart';
import 'package:haspr_assignment/components/notification_item.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/components/round_border_container.dart';
import 'package:haspr_assignment/components/title_widget.dart';
import 'package:haspr_assignment/utils/constants/colors.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class PostAdScreen extends StatefulWidget {
  const PostAdScreen({Key? key}) : super(key: key);

  @override
  State<PostAdScreen> createState() => _PostAdScreenState();
}

class _PostAdScreenState extends State<PostAdScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 25),
            // color: Colors.red,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleWidget(
                    title: "Post An",
                    subtitle: 'Advertisement.',
                  ),

                  Center(
                    child: Image.asset(
                      'assets/ad_cartoon_pic.png',
                      height: screenSize.height * 0.25,
                      width: screenSize.width * 0.8,
                    ),
                  ),
                  const Text('Reach more Customers and Employers!'),
                  const Text(
                    'Start by posting Your Service Ad.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(20),
                  RoundBorderContainer(
                    color: lightGrey,
                    padding: 20,
                    child: const TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Name of Your Service',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  addVerticalSpace(20),
                  RoundBorderContainer(
                    color: lightGrey,
                    padding: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: const Text(
                          'Service Area',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: addEmptyWidget(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   dropdownValue = newValue!;
                          // });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  addVerticalSpace(20),
                  RoundBorderContainer(
                    color: lightGrey,
                    padding: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        // value: 'One',
                        isExpanded: true,
                        hint: const Text(
                          'Field of Work',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: addEmptyWidget(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   dropdownValue = newValue!;
                          // });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  // Spacer(),
                  addVerticalSpace(75),
                  const Text(
                    'By Submitting This Advertisement, You Agree to '
                    'Share Your Contact Details with Customers and Employers on the '
                    'Hyre Me Platform.',
                    style: TextStyle(fontSize: 9),
                  ),
                  addVerticalSpace(16),
                  RectangularRoundButton(
                      borderRadius: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'POST ADVERTISEMENT',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      buttonColor: Colors.red)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
