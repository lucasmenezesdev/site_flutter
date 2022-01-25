import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Expanded(flex: 5, child: localNavigator())],
    );
  }
}
