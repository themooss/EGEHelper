import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 30),
        itemBuilder: (context, index) => BaseContainer(
            width: 150,
            height: 140,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.abc_sharp),
                Text("Action"),
              ],
            )),
      ),
    );
  }
}
