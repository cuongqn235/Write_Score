import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:write_score/design/theme/theme.dart';
import 'package:write_score/feature/app/application/initial/initial_cubit.dart';
import 'package:write_score/feature/common/router/go_router_refresh_stream.dart';
import 'package:write_score/feature/app/router/router.dart';
import 'package:write_score/feature/splash/presentation/splash.dart';
import 'package:write_score/gen/assets.gen.dart';
import 'package:write_score/helper/extension/async.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:write_score/inject_dependency/inject_dependency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'application/app/app_bloc.dart';

class BaseProjectApp extends StatelessWidget {
  const BaseProjectApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt.call<AppBloc>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt.call<InitialCubit>()..start(),
        ),
      ],
      child: Builder(builder: (context) {
        return const _AppView();
      }),
    );
  }
}

late final GoRouter appRoute;

class _AppView extends StatefulWidget {
  const _AppView({super.key});

  @override
  State<_AppView> createState() => __AppViewState();
}

class __AppViewState extends State<_AppView> {
  late final AppBloc appBloc;

  late final StreamController redirectController;
  late final Completer processIntital;
  @override
  void initState() {
    super.initState();
    // localization.init(mapLocales: [
    //   const MapLocale(
    //     'vi',
    //     {'title': "Vietnamese"},
    //   )
    // ], initLanguageCode: 'vi');
    appBloc = context.read<AppBloc>();
    processIntital = Completer();
    redirectController = StreamController.broadcast();
    setupRouter(context);
    intitial();
  }

  void intitial() {
    context.read<InitialCubit>().start();
    appBloc.add(const AppEvent.initial());

    Future.wait([
      // processAuthen.future,
      processIntital.future,
      // processVersion.future,
    ]).then((value) {
      if (mounted) {
        // context.read<AppDeepLinkBloc>().add(const AppDeepLinkEventOnStarted());
        context.read<InitialCubit>().end();
      }
    });
  }

  void setupRouter(BuildContext context) {
    final routes = allRoutes;
    appRoute = GoRouter(
      // routes: $appRoutes,
      initialLocation: $appRoute.path,
      routes: routes,
      errorBuilder: (context, state) {
        if (kDebugMode) {
          print(state.error);
        }
        // return const ErrorPage();
        return Container();
      },
      refreshListenable: GoRouterRefreshStream(redirectController.stream.merge([
        // authBloc.stream,
      ])),
      redirect: (context, state) {
        // if (appBloc.state.isFirstLaunch == true) {
        //   return $onboardRoute.path;
        // }
        if (state.fullPath != null &&
            state.fullPath!.compareTo($appRoute.path) != 0) {
          return state.fullPath;
        }
        return $homeRoute.path;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listenWhen: (previous, current) =>
              previous.isFirstLaunch != current.isFirstLaunch,
          listener: (context, state) {
            redirectController.add(dartz.unit);
          },
        ),
        BlocListener<AppBloc, AppState>(listener: (context, state) {
          if (state.isFirstLaunch != null && !processIntital.isCompleted) {
            // context
            //     .read<AuthProcessBloc>()
            //     .add(const AuthProcessEvent.initialize());
            processIntital.complete();
          }
        }),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: MaterialApp.router(
                title: 'App ghi điểm',
                themeMode: ThemeMode.system,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme(context),
                darkTheme: AppTheme.darkTheme(context),
                // scrollBehavior: const DefaultScrollBehavior(),
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                routeInformationParser: appRoute.routeInformationParser,
                routerDelegate: appRoute.routerDelegate,
                routeInformationProvider: appRoute.routeInformationProvider,
                builder: (context, child) {
                  return LoaderOverlay(
                    child: BlocSelector<InitialCubit, InitialState, bool>(
                      selector: (state) => state.isFinish,
                      builder: (context, isFinish) {
                        if (isFinish) {
                          return child ?? const SizedBox.shrink();
                        }
                        return const SplashPage();
                      },
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
