import 'package:write_score/feature/on_board/presentation/on_board_page.dart';
import 'package:go_router/go_router.dart';

class OnBoardRoute {
  static GoRoute init() {
    return GoRoute(
      path: '/onBoard',
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: OnBoardPage(),
        );
      },
    );
  }
}
