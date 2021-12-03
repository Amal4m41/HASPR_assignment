import 'package:flutter/material.dart';
import 'package:haspr_assignment/utils/widget_functions.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isShowProfilePic;
  final bool isLoadImageFromNetwork;
  final String? imagePath;

  const TitleWidget(
      {required this.title,
      required this.subtitle,
      this.isShowProfilePic = false,
      this.isLoadImageFromNetwork = true,
      this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              Text(subtitle, style: TextStyle(fontSize: 34)),
            ],
          ),
          isShowProfilePic && imagePath != null
              ? CircleAvatar(
                  radius: 30,
                  backgroundImage: isLoadImageFromNetwork
                      ? NetworkImage(imagePath!)
                      : AssetImage(imagePath!) as ImageProvider,
                )
              : addEmptyWidget()
        ],
      ),
    );
  }
}
