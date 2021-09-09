import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgestor/modules/common/widgets/c_text_button.dart';
import 'package:tgestor/modules/common/widgets/c_text_field.dart';
import 'package:tgestor/modules/sign_up/sign_up_controller.dart';

class SignUpPage extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Bem vindo(a)!",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  CTextField(
                    labelText: 'Entre com seu nome completo',
                    controller: controller.nomeTextEditingController,
                  ),
                  SizedBox(height: 20),
                  CTextField(
                    labelText: 'Entre com seu CPF',
                    controller: controller.cpfTextEditingController,
                  ),
                  SizedBox(height: 20),
                  CTextField(
                    labelText: 'Entre sua data de nascimento',
                    controller:
                        controller.dataDeNascimentoTextEditingController,
                  ),
                  SizedBox(height: 20),
                  CTextField(
                    labelText: 'Entre com seu email acadêmico',
                    controller: controller.emailTextEditingController,
                  ),
                  SizedBox(height: 20),
                  CTextField(
                    labelText: 'Entre com sua senha',
                    controller: controller.senhaTextEditingController,
                  ),
                  SizedBox(height: 20),
                  CTextField(
                    labelText: 'Confirme sua senha',
                    controller: controller.confirmeSenhaTextEditingController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CTextButton(
                    buttonText: 'Cadastrar',
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Já possui uma conta? ',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Entre',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('The button was clicked!');
                              },
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Color(0xff1E6A92))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            width: Get.width,
          )),
    );
  }
}
