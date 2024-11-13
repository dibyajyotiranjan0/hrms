import 'package:flutter/material.dart';
import 'package:hrms/Screen/my_list/widget/my-task_widget.dart';

class MylistScreen extends StatefulWidget {
  const MylistScreen({super.key});

  @override
  State<MylistScreen> createState() => _MylistScreenState();
}

class _MylistScreenState extends State<MylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: myTaskWidget());
  }
}
