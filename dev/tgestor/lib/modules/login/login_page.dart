import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgestor/modules/common/widgets/c_rich_text_button.dart';
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
                SizedBox(height: 130),
                Text(
                  "Bem vindo(a) de volta!",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Container(
                  child: SvgPicture.asset("assets/images/login.svg"),
                  height: 225,
                ),
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
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    print('Text Clicked');
                  },
                  child: Text(
                    'Esqueci a senha',
                    style: GoogleFonts.poppins(
                        color: Color(0xff1E6A92), fontSize: 14),
                  ),
                ),
                SizedBox(height: 10),
                CRichTextButton(
                    text: 'Não possui uma conta? ', textButton: 'Cadastre-se')
              ],
            ),
          ),
          width: Get.width,
        ));
  }
}
