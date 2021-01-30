import 'package:flutter/material.dart';
import 'package:health_hub/utils/screen_size.dart';

class MyFeedCard extends StatelessWidget {
  final String title;

  const MyFeedCard({Key key, this.title = "Card Title"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Transform.rotate(
          angle: 3.1416 / 2,
          origin: Offset(0, -20),
          child: Container(
            height: MyScreen.height(context) * 0.25,
            width: MyScreen.width(context) * 0.38,
            child: Stack(
              children: [
                // Center(child: Image.asset(constImageAsset + "pipes.png")),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
