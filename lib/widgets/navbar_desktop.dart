import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:siteflutter/constants/controllers.dart';
import 'package:siteflutter/helpers/authentication.dart';
import 'package:siteflutter/helpers/stripe_checkout.dart';

import 'package:siteflutter/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/pages/signature_page/widgets/signature_page.dart';
import 'package:siteflutter/widgets/auth_dialog.dart';
import 'package:siteflutter/widgets/custom_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: mainOrange,
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            SizedBox(
              width: screenSize.width / 25,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: screenSize.width / 30),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {
                    Get.back();
                    navigationController.navigateTo("Home");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Início",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: _isHovering[0] ? blueDetails : white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[0],
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: blueDetails,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 24.7,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Atualizações",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: _isHovering[1] ? blueDetails : white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[1],
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: blueDetails,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 24.7,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Quem somos?",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: _isHovering[2] ? blueDetails : white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[2],
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: blueDetails,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 24.7,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Central de ajuda",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: _isHovering[3] ? blueDetails : white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[3],
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: blueDetails,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 10,
                ),
                Container(
                  child: userEmail == null
                      ? Text('')
                      : CircleAvatar(
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
                  width: 5,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[4] = true : _isHovering[4] = false;
                    });
                  },
                  hoverColor: Colors.transparent,
                  onTap: () {
                    userEmail == null ? showLoginDialog(context) : signOut();
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      userEmail == null
                          ? Text(
                              "Login",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: _isHovering[4] ? blueDetails : white,
                              ),
                            )
                          : Text(
                              "Sair",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: _isHovering[4] ? blueDetails : white,
                              ),
                            ),
                      const SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[4],
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 150,
                ),
                Container(
                  color: Colors.black.withOpacity(0.2),
                  width: 1,
                  height: 40,
                ),
                SizedBox(
                  width: screenSize.width / 150,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: const Size(150, 45),
                    ),
                    child: const Text('Assinatura'),
                    onPressed: () {
                      (userEmail == null)
                          ? {showLoginDialog(context), showErroDialog(context)}
                          : {redirectToCheckout(context)};
                    }),
                SizedBox(
                  width: screenSize.width / 40,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  showLoginDialog(context) {
    AuthDialog alerta = AuthDialog();
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  showErroDialog(context) {
    AlertDialog alerta = AlertDialog(
      backgroundColor: Colors.transparent,
      title: Text(
        'Faça login antes de acessar a assinatura.',
        style: GoogleFonts.montserrat(color: Colors.red),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        });
  }
}
