import 'package:demo_01/widget/doubleCheckConfirmation.dart';
import 'package:demo_01/widget/init.dart';
import 'package:flutter/material.dart';

class Build extends StatelessWidget {
  const Build({
    super.key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
  });

  final AppBar? appBar;
  final Widget body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Init(
        child: DoubleCheckConfirmation(
            child: Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
    )));
  }
}
