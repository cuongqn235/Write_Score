import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:write_score/feature/app/app.dart';

import 'inject_dependency/inject_dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Add this line
  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    configureDependencies(),
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const BaseProjectApp());
}
