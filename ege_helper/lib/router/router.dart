import 'package:auto_route/auto_route.dart';
import 'package:ege_helper/features/home/home.dart';
import 'package:ege_helper/features/menu/menu.dart';

import '../features/profile/profile.dart';
import '../features/study/study.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: MenuRoute.page, path: 'menu'),
          AutoRoute(
            page: StudyRoute.page,
            path: 'study',
          ),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ]),
      ];
}
