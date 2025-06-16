import 'package:flutter/material.dart';
import 'package:ostad_batch_10/statefull_class.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'flutter_class_1.dart';
import 'flutter_class_2.dart';
import 'form_login.dart';
import 'module 9 class 3.dart';
import 'module_11/class_1/alert/alert.dart';
import 'module_11/class_1/lifeCycle.dart';
import 'module_11/class_2/calculatorApp.dart';
import 'module_11/class_3/waterTracker.dart';
import 'module_12/class_1.dart';
import 'module_12/class_2.dart';
import 'module_12/class_3.dart';
import 'module_13/module13.dart';
import 'module_9_class_2.dart';
import 'module_9_mediaQuery.dart';
import 'module_9_todo.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
      child: const Module13(),
    );
  }

}