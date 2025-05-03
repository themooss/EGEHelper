import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      height: 210,
      margin: EdgeInsets.only(left: 15, right: 15).copyWith(top: 30),
      child: Wrap(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.grey),
          ),
          Container(
            width: 130,
            height: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: theme.hintColor),
          ),
          Container(
            height: 20,
            width: 120,
            margin: EdgeInsets.only(left: 10),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
