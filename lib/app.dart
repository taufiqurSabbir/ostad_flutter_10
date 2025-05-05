import 'package:flutter/material.dart';
import 'package:ostad_batch_10/statefull_class.dart';

import 'flutter_class_1.dart';
import 'flutter_class_2.dart';
import 'form_login.dart';
import 'module_9_mediaQuery.dart';
import 'module_9_todo.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'batch 10 flutter',
      home: ModuleMedia(),
    );
  }
}