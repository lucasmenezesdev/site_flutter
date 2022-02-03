import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/constants/constants.dart';
import 'package:siteflutter/helpers/style.dart';

class SignaturePlanMobile extends StatelessWidget {
  const SignaturePlanMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 380,
      width: screenSize.width,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 45),
              height: screenSize.width,
              width: screenSize.width,
              alignment: Alignment.center,
              color: grayBack,
              child: Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  textAssinatura,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Row(children: [
              Container(
                height: 70,
                width: 270,
                alignment: Alignment.center,
                color: mainOrange,
                child: Text(
                  'Como funciona a assinatura',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 45,
                width: 170,
                alignment: Alignment.center,
                color: blueDetails,
                child: Text('3 meses grátis',
                    style: GoogleFonts.montserrat(
                      fontSize: 21,
                      color: white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
