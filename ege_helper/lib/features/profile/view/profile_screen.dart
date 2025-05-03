import 'package:auto_route/auto_route.dart';
import 'package:ege_helper/features/const/naming.dart';
import 'package:ege_helper/features/profile/profile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true,
          floating: true,
          backgroundColor: theme.cardColor,
          elevation: 0,
          title: Text(mainScreenNames[2]), // 2 - profile
          surfaceTintColor: Colors.transparent,
        ),
        SliverToBoxAdapter(child: UserProfileCard()),
        SliverToBoxAdapter(
          child: ActivityProfileCard(),
        ),
      ],
    );
  }
}
