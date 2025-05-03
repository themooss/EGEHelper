import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer(
      {super.key,
      required this.child,
      required this.width,
      required this.height,
      this.margin,
      this.padding});

  final Widget child;
  final double width;
  final double height;
  final EdgeInsets? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
