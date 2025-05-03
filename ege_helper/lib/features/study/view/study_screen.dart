import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ege_helper/features/const/naming.dart';

import '../widgets/widgets.dart';

@RoutePage()
class StudyScreen extends StatelessWidget {
  const StudyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(slivers: [
      SliverAppBar(
        snap: true,
        floating: true,
        backgroundColor: theme.cardColor,
        elevation: 0,
        title: Text(mainScreenNames[1]),
        surfaceTintColor: Colors.transparent,
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 30,
        ),
      ),
      SliverList.builder(
          itemCount: 10, itemBuilder: (context, index) => SubjectsListCard()),
    ]);
  }
}
