import 'package:ege_helper/router/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ege_helper/features/const/naming.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: [
        MenuRoute(),
        StudyRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: theme.primaryColor,
              unselectedItemColor: theme.hintColor,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => _openPage(index, tabsRouter),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: mainScreenNames[0]),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: mainScreenNames[1]),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: mainScreenNames[2]),
              ],
            ));
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
