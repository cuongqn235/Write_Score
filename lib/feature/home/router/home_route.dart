import 'package:write_score/feature/common/page/base_page.dart';
import 'package:write_score/feature/home/presentation/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../application/home_bloc.dart';

class HomeRoute {
  static GoRoute init() {
    return GoRoute(
      path: '/home',
      routes: const [],
      pageBuilder: (context, state) {
        return CupertinoPage(
          child: BasePage<HomeBloc, HomeState>(page: const HomePage()),
        );
      },
    );
  }
}
