import 'package:flutter/material.dart';

import "../../../ui/ui.dart";

class EGEHelperListCard extends StatelessWidget {
  const EGEHelperListCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      height: 140,
      margin: EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.book),
          Text(
            text,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
