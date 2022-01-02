import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';

class BannerDesktop extends StatelessWidget {
  const BannerDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 700,
      color: mainOrange,
      child: Stack(
        children: [
          Container(
            child: Positioned(
              top: 180,
              left: screenSize.width / 1.48,
              child: Image.asset(
                'assets/images/celularE.png',
                width: 350,
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 70,
              left: screenSize.width / 2,
              child: Image.asset(
                'assets/images/celularD.png',
                width: 500,
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 500,
              left: 100,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueDetails),
                height: 60,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/googleplay.png',
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Baixar na',
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: white),
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
          ),
          Container(
            child: Positioned(
              top: 500,
              left: 360,
              child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueDetails),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/appstore.png',
                      width: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Baixar na',
                          style: GoogleFonts.montserrat(
                              fontSize: 10, color: white),
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
          ),
          Container(
            child: Positioned(
              top: 160,
              left: 100,
              child: Text(
                'Preste serviços',
                style: GoogleFonts.montserrat(
                    color: white, fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 250,
              left: 102,
              child: Text(
                'Seus clientes em um só lugar',
                style: GoogleFonts.montserrat(
                    color: white, fontSize: 40, fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
