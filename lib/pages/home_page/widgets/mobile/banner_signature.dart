import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/constants/controllers.dart';
import 'package:siteflutter/helpers/authentication.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/widgets/auth_dialog.dart';
import 'package:siteflutter/widgets/navbar_mobile.dart';

class BannerSignature extends StatelessWidget {
  const BannerSignature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: blueDetails,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Faça sua assinatura aqui:',
              style: GoogleFonts.montserrat(fontSize: 24, color: white)),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: blueDetails.withOpacity(0.2),
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
        ],
      ),
    );
  }
}
