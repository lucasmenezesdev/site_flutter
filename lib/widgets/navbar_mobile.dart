import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:siteflutter/constants/controllers.dart';
import 'package:siteflutter/helpers/authentication.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/widgets/auth_dialog.dart';
import 'package:siteflutter/widgets/custom_button.dart';

Widget mobileNavBar(GlobalKey<ScaffoldState> key, context) => AppBar(
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
      actions: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              fixedSize: const Size(100, 45),
            ),
            onPressed: () {
              (userEmail == null)
                  ? {showLoginDialog(context)}
                  : {Get.back(), navigationController.navigateTo("Signature")};
            },
            child: Text('Assinatura'),
          ),
        ),
      ],
    );
