import 'package:flutter/material.dart';
import 'package:health_hub/screens/welcome_screen/local_widgets/circle_container.dart';
import 'package:health_hub/utils/colors.dart';
import 'package:health_hub/utils/constant.dart';
import 'package:health_hub/utils/screen_size.dart';

class MyDashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: MyScreen.height(context) * 0.25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Spacer(),
                MyCircleContainer(
                  circleColor: MyColor.greyLight,
                  column: 2,
                  row: 7,
                  size: 0.1,
                ),
              ],
            ),
            Image.asset(constImageAsset + "pipes.png"),
            MyCircleContainer(
              circleColor: MyColor.greyLight,
              column: 3,
              row: 9,
              size: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
