import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CRichTextButton extends StatelessWidget {
  final String text;
  final String textButton;

  const CRichTextButton(
      {Key? key, required this.text, required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
              text: textButton,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('The button was clicked!');
                },
              style:
                  GoogleFonts.poppins(fontSize: 14, color: Color(0xff1E6A92))),
        ],
      ),
    );
  }
}
