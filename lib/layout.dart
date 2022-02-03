import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/responsive.dart';
import 'package:siteflutter/helpers/style.dart';

import 'package:siteflutter/pages/home_page/widgets/desktop/desktop.dart';
import 'package:siteflutter/pages/signature_page/widgets/signature_page.dart';
import 'package:siteflutter/widgets/large_screen.dart';
import 'package:siteflutter/widgets/navbar_desktop.dart';
import 'package:siteflutter/pages/home_page/widgets/home_page.dart';
import 'package:siteflutter/pages/home_page/widgets/mobile/mobile.dart';
import 'package:siteflutter/widgets/navbar_mobile.dart';

import 'package:siteflutter/widgets/drawer.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? PreferredSize(
                child: mobileNavBar(scaffoldKey, context),
                preferredSize: Size(screenSize.width, 70),
              )
            : PreferredSize(
                child: const NavBar(),
                preferredSize: Size(screenSize.width, 1000),
              ),
        drawer: const SideMenu(),
        backgroundColor: white,
        body: LargeScreen());
  }
}
