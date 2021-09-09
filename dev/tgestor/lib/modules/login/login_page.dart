import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgestor/modules/common/widgets/c_text_button.dart';
import 'package:tgestor/modules/common/widgets/c_text_field.dart';
import 'package:tgestor/modules/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150),
                Text(
                  "Bem vindo(a) de volta!",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: SvgPicture.asset("assets/images/login.svg"),
                  height: 225,
                ),
                SizedBox(height: 10),
                CTextField(
                  labelText: 'Entre com seu email',
                  controller: controller.emailTextEditingController,
                ),
                SizedBox(height: 20),
                CTextField(
                  labelText: 'Entre com sua senha',
                  controller: controller.senhaTextEditingController,
                  isPassword: true,
                ),
                SizedBox(height: 30),
                CTextButton(buttonText: 'Entrar', onPressed: () {}),
                SizedBox(height: 10),
              ],
            ),
          ),
          width: Get.width,
        ));
  }
}
