import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgestor/modules/common/widgets/c_text_button.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: SvgPicture.asset(
              "assets/images/certification.svg",
              width: 250,
            )),
            SizedBox(height: 20),
            Text(
              "Gerencie facilmente o seu\n trabalho de graduação com o",
              style: GoogleFonts.poppins(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text("TGestor",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 24)),
            SizedBox(height: 30),
            CTextButton(
              buttonText: 'Entrar',
              onPressed: () {},
            ),
            SizedBox(height: 20),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text('Cadastrar'),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xff1E6A92),
                    backgroundColor: Color(0xffE5E5E5),
                    side: BorderSide(color: Color(0xff1E6A92), width: 2),
                    textStyle: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              width: Get.width,
              height: 50,
            )
          ],
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
