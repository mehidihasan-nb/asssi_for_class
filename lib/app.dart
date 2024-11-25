import 'package:ass/screen/todoscreen.dart';
import 'package:asssi_for_class/screen/todolist.dart';
import 'package:flutter/material.dart';
class todoApp extends StatelessWidget {
  const todoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: todolist(),
        );
    }
}