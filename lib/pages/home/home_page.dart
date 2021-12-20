import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/widgets/navbar_desktop.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: NavBar(),
      ),
      backgroundColor: white,
    );
  }
}
