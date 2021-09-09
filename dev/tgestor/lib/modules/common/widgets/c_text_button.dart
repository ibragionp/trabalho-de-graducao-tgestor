import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  const CTextButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.white,
            backgroundColor: Color(0xff1E6A92),
            textStyle:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      width: Get.width,
      height: 50,
    );
  }
}
