import 'package:flutter/material.dart';
import 'package:haspr_assignment/components/rectangular_round_button.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class JobCardItem extends StatelessWidget {
  const JobCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Interior Carpet Designer",
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
                            'Full Time',
                            style: TextStyle(fontSize: 9),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          borderRadius: 5,
                          borderWidth: 1,
                          borderColor: Colors.black,
                          buttonColor: Colors.white),
                      addHorizontalSpace(10),
                      Text(
                        'Salary upto rs 15000 / month',
                        style: TextStyle(fontSize: 11),
                      ),
                      Spacer(),
                      Icon(Icons.bookmark, color: Colors.lightBlueAccent)
                    ],
                  ),
                  addVerticalSpace(10),
                  Text(
                    '2+ Years Experience',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
              addVerticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Badonia & Sons',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )),
                      Text(
                        'Civil Ines, Sagar',
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                  const RectangularRoundButton(
                    buttonColor: Colors.red,
                    child: Text(
                      'Apply Now',
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    borderRadius: 10,
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
