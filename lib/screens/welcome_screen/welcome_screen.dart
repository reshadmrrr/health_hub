import 'package:flutter/material.dart';
import 'package:health_hub/utils/colors.dart';
import 'package:health_hub/utils/constant.dart';
import 'package:health_hub/utils/screen_size.dart';

import 'local_widgets/circle_container.dart';

class MyWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.blackPrimary,
      body: Padding(
        padding:
            EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCircleContainer(),
                MyCircleContainer(),
              ],
            ),
            Expanded(
              child: Image.asset(
                constImageAsset + "hhub_logo.png",
                width: MyScreen.width(context) * 0.4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCircleContainer(),
                MyCircleContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
