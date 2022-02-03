import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';

class BannerMobile extends StatefulWidget {
  const BannerMobile({Key? key}) : super(key: key);

  @override
  _BannerMobileState createState() => _BannerMobileState();
}

class _BannerMobileState extends State<BannerMobile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 700,
      decoration: BoxDecoration(
        color: mainOrange,
      ),
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 250,
            child: Image.asset(
              'assets/images/celulares.png',
              width: 400,
            ),
          ),
          Positioned(
            top: 500,
            child: Row(
              children: [
                ElevatedButton(
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
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
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
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Column(
              children: [
                Text(
                  'Preste serviços',
                  style: GoogleFonts.montserrat(
                      color: white,
                      fontSize: screenSize.width / 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Seus clientes em um só lugar',
                  style: GoogleFonts.montserrat(
                      color: white,
                      fontSize: screenSize.width / 23,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
