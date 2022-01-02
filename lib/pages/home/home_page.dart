import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/responsive.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/pages/home/widgets/desktop.dart';
import 'package:siteflutter/pages/home/widgets/mobile.dart';
import 'package:siteflutter/widgets/drawer.dart';
import 'package:siteflutter/widgets/navbar_desktop.dart';
import 'package:siteflutter/widgets/navbar_mobile.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? PreferredSize(
              child: mobileNavBar(scaffoldKey),
              preferredSize: Size(screenSize.width, 70),
            )
          : PreferredSize(
              child: NavBar(),
              preferredSize: Size(screenSize.width, 1000),
            ),
      drawer: SideMenu(),
      backgroundColor: white,
      body: ResponsiveWidget(
        largeScreen: DesktopScreen(),
        smallScreen: MobileScreen(),
        mediumScreen: DesktopScreen(),
      ),
    );
  }
}
