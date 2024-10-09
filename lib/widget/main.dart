import 'package:demo_01/widget/doubleCheckConfirmation.dart';
import 'package:demo_01/widget/init.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({
    super.key,
    required this.appBar,
    required this.body,
  });

  final AppBar appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Init(
        child: DoubleCheckConfirmation(
            child: Scaffold(
      appBar: appBar,
      body: body,
    )));
  }
}
