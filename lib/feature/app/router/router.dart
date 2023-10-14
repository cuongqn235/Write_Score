import 'package:write_score/feature/home/feature/game/router/game_route.dart';
import 'package:write_score/feature/home/router/home_route.dart';
import 'package:write_score/feature/on_board/router/on_board_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final $appRoute = GoRoute(
  path: '/',
  pageBuilder: (context, state) =>
      const NoTransitionPage(child: SizedBox.shrink()),
);
final $onboardRoute = OnBoardRoute.init();
final $homeRoute = HomeRoute.init();
final $gameRoute = GameRoute.init();
// final $authRoute = AuthRoute(
//   parent: $appRoute.routePath,
//   path: '/auth',
// );

// final $userRoute = UserRoute(
//   path: '/user',
//   parent: $appRoute.routePath,
// );
// final $estateRoute = EstateRoute(
//   path: '/estates',
//   parent: $appRoute.routePath,
// );
// final $scanQrCodeRoute = ScanQrCodeRoute(
//   path: '/scan-qr-code',
//   parent: $appRoute.routePath,
// );

// final $ownerRoute = OwnerRoute(
//   path: '/owners/:ownerId',
//   parent: $appRoute.routePath,
// );

// final $notificationRoute = NotificationRoute(
//   path: '/notifications',
//   parent: $appRoute.routePath,
// );
// final $paymentRoute = PaymentRoute(
//   path: '/payments',
//   parent: $appRoute.routePath,
// );
// final $version = VersionAppRoute(
//   path: '/version',
//   parent: $appRoute.routePath,
// );

// final $directional = DirectionalRoute(
//   path: '/directional',
//   parent: $appRoute.routePath,
// );

// final $accounts = AccountRoute(parent: $appRoute.routePath, path: '/accounts');

final allRoutes = [
  $appRoute,
  $onboardRoute,
  $homeRoute,
  $gameRoute,
  // ...$authRoute.build(),

  // ...$userRoute.build(),
  // ...$estateRoute.build(),
  // ...$scanQrCodeRoute.build(),
  // ...$ownerRoute.build(),
  // ...$notificationRoute.build(),
  // ...$paymentRoute.build(),
  // ...$accounts.build(),
  // ...$version.build(),
  // ...$directional.build(),
];
