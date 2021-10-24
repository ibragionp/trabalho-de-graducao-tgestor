import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final bool? isPassword;

  const CTextField(
      {Key? key,
      @required this.labelText,
      @required this.controller,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword!,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5)),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1E6A92)),
            borderRadius: BorderRadius.circular(10)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10)),
        labelStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
        labelText: labelText,
      ),
    );
  }
}
