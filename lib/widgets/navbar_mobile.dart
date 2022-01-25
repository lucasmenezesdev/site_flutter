import 'package:flutter/material.dart';
import 'package:siteflutter/helpers/style.dart';

Widget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: blueDetails,
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
      backgroundColor: mainOrange,
      title: Image.asset(
        'assets/images/logo.png',
        width: 90,
      ),
      centerTitle: true,
      elevation: 0,
    );
