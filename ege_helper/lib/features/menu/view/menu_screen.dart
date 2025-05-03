import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ege_helper/features/const/naming.dart';

import '../widgets/widgets.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({
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
          surfaceTintColor: Colors.transparent,
          title: Text("EGEHelper"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Text(mainScreenNames[0])),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const SliverToBoxAdapter(
          child: SliderCard(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverList.builder(
            itemCount: listCardNames.length,
            itemBuilder: (context, index) =>
                EGEHelperListCard(text: listCardNames[index])),
      ],
    );
  }
}
