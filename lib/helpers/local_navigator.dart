import 'package:flutter/material.dart';
import 'package:siteflutter/constants/controllers.dart';
import 'package:siteflutter/pages/home_page/widgets/home_page.dart';
import 'package:siteflutter/pages/signature_page/widgets/signature_page.dart';
import 'package:siteflutter/routing/router.dart';
import 'package:siteflutter/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
