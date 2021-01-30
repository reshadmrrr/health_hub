import 'package:flutter/material.dart';
import 'package:health_hub/utils/screen_size.dart';

class MyCircleContainer extends StatelessWidget {
  final double size;
  final int row;
  final int column;
  final Color circleColor;

  const MyCircleContainer({
    Key key,
    this.size = 0.05,
    this.row = 2,
    this.column = 2,
    this.circleColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _size = MyScreen.width(context) * size;

    Widget _getCircleIcon() => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            Icons.circle,
            color: circleColor,
            size: _size * 0.2,
          ),
        );

    return Container(
      // width: _size,
      // height: _size,
      child: Column(
        children: [
          for (int i = 0; i < row; ++i)
            Row(
              children: [
                for (int j = 0; j < column; ++j) _getCircleIcon(),
              ],
            ),
        ],
      ),
    );
  }
}
