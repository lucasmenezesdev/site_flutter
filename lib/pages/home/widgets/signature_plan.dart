import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/style.dart';

class SignaturePlan extends StatelessWidget {
  const SignaturePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const SweepGradient gradient = SweepGradient(
      colors: <Color>[Color(0xFFFFFFFF), Color(0xFF009900)],
      transform: GradientRotation(2 / 4),
    );
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 300,
      width: screenSize.width,
      child: Container(
        margin: EdgeInsets.only(top: 70),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45),
              height: 200,
              width: screenSize.width,
              alignment: Alignment.center,
              color: grayBack,
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  '         A assinatura te da o direito de utilizar todas as ferramentas exclusivas para prestadores de serviços. Você tem 3 mêses grátis para utilizar uma conta premium e válidar, após isso será cobrada uma taxa de apénas R\$17,90 por mês, mas a recorrencia pode ser desativada nas configurações.',
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
                width: 380,
                alignment: Alignment.center,
                color: mainOrange,
                child: Text(
                  'Como funciona a assinatura',
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 45,
                width: 200,
                alignment: Alignment.center,
                color: blueDetails,
                child: Text('3 meses grátis',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
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
