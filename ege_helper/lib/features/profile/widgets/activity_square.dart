import 'package:flutter/material.dart';

class ActivitySquare extends StatelessWidget {
  const ActivitySquare({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 17,
        width: 17,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(3)),
          margin: EdgeInsets.only(top: 4, left: 4),
        ));
  }
}
