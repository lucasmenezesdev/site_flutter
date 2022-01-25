import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/error.png',
            width: 350,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Page not found',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
