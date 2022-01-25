import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';
import 'dart:math';

class BannerDesktop extends StatefulWidget {
  const BannerDesktop({Key? key}) : super(key: key);

  @override
  State<BannerDesktop> createState() => _BannerDesktopState();
}

class _BannerDesktopState extends State<BannerDesktop> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 700,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-1.0, 5.5),
          end: const Alignment(1.0, 0.0),
          transform: const GradientRotation(2.4),
          stops: const [
            0.9,
            0.0
          ], //First Part is the amount of space the first color has
          colors: [mainOrange, white], // List of colors
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 180,
            left: screenSize.width / 1.48,
            child: Image.asset(
              'assets/images/celularE.png',
              width: 350,
            ),
          ),
          Positioned(
            top: 70,
            left: screenSize.width / 2,
            child: Image.asset(
              'assets/images/celularD.png',
              width: 500,
            ),
          ),
          Positioned(
            top: 500,
            left: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blueDetails,
                fixedSize: Size(175, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/googleplay.png',
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Baixar na',
                        style:
                            GoogleFonts.montserrat(fontSize: 10, color: white),
                      ),
                      Text('Play Store',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 360,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blueDetails,
                fixedSize: const Size(175, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/appstore.png',
                    width: 38,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Baixar na',
                        style:
                            GoogleFonts.montserrat(fontSize: 10, color: white),
                      ),
                      Text('App Store',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 100,
            child: Text(
              'Preste serviços',
              style: GoogleFonts.montserrat(
                  color: white, fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 250,
            left: 102,
            child: Text(
              'Seus clientes em um só lugar',
              style: GoogleFonts.montserrat(
                  color: white, fontSize: 40, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
