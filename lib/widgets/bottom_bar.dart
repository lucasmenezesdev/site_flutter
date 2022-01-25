import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 130,
      width: screenSize.width,
      decoration: BoxDecoration(color: grayBottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset('assets/images/maosj.png'),
            width: 80,
          ),
          SizedBox(
            width: screenSize.width / 20,
          ),
          Text(
            'Copyright 2022 by Lucas Menezes. All Rights reserved.',
            style: GoogleFonts.montserrat(),
          ),
        ],
      ),
    );
  }
}
