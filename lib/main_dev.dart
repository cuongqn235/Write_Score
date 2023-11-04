import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:write_score/feature/app/app.dart';
import 'package:write_score/inject_dependency/inject_dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Add this line
  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    configureDependencies(),
    EasyLocalization.ensureInitialized(),
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const BaseProjectApp(),
    ),
  );
}
