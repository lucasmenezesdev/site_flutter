import 'package:flutter/material.dart';
import 'package:siteflutter/pages/home_page/widgets/home_page.dart';
import 'dart:js';

import 'package:siteflutter/pages/signature_page/widgets/signature_page.dart';
import 'package:siteflutter/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageDisplayName:
      return _getPageRoute(HomePage());
    case SignatureDisplayName:
      return _getPageRoute(SignaturePage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
