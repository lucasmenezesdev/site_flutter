import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/constants/constants.dart';
import 'package:siteflutter/helpers/style.dart';

class BenefitsPlan extends StatelessWidget {
  const BenefitsPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(top: 60),
        height: 1000,
        width: screenSize.width,
        child: Column(
          children: [
            Text(
              'Benefícios',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 55),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Text(
                          titlePerfilPersonalizavel,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textPerfilPersonalizavel,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Text(
                          titleFeedPost,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textFeedPost,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: Column(
                      children: [
                        Text(
                          titleSincronizacaoRapida,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textSincronizacaoRapida,
                          style: GoogleFonts.montserrat(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Text(
                          titleAgendamentos,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textAgendamentos,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Text(
                          titleSemTaxas,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textSemTaxas,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: grayBack),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        Text(
                          titleComunicacaoRapida,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          textComunicacaoRapida,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
