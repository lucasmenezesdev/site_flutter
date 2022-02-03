import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/constants/controllers.dart';
import 'package:siteflutter/helpers/authentication.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/widgets/auth_dialog.dart';
import 'package:siteflutter/widgets/navbar_mobile.dart';

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
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage:
                        imageUrl != null ? NetworkImage(imageUrl!) : null,
                    child: imageUrl == null
                        ? Icon(
                            Icons.account_circle,
                            size: 30,
                          )
                        : Text(''),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                name == null
                    ? Text(
                        'Não logado',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: white,
                        ),
                      )
                    : Text(
                        '$name',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: white,
                        ),
                      ),
              ],
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blueDetails,
                fixedSize: const Size(270, 35),
              ),
              onPressed: () {
                userEmail == null ? showLoginDialog(context) : signOut();
              },
              child: userEmail == null
                  ? Text(
                      "Login",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    )
                  : Text(
                      "Sair",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                navigationController.navigateTo("Home");
              },
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
            InkWell(
              onTap: () {},
              child: Text(
                'Assinatura',
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
