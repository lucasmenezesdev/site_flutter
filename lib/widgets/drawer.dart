import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: mainOrange,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Início',
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Atualizações',
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Quem somos?',
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Central de ajuda',
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  color: white,
                ),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Copyright 2021 | Lucas Menezes',
                style: GoogleFonts.montserrat(
                  color: white,
                  fontSize: 14,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
