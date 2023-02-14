import 'package:flutter/material.dart';

class OderScreen extends StatelessWidget {
  const OderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: Center(
      child: Text('Order'),
    )));
  }
}
