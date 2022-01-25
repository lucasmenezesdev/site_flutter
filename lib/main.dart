import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siteflutter/layout.dart';
import 'package:siteflutter/pages/404/error_page.dart';
import 'package:siteflutter/pages/home_page/widgets/home_page.dart';
import 'package:siteflutter/pages/signature_page/widgets/signature_page.dart';
import 'package:siteflutter/routing/routes.dart';

import 'controllers/navigation_controller.dart';

void main() {
  Get.put(NavigationController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePageRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => Layout()),
        GetPage(name: SignaturePageRoute, page: () => Layout()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Sincroneasy - Prestador de serviços',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
