import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingWidget extends StatelessWidget {
  const OutBoardingWidget({
    required this.image,
    required this.title,
    required this.body,
    super.key,
  });

  final String image;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const Spacer(),
        Image.asset(
          image,
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xff23203F),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Text(
          body,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: const Color(0xff716F87),
          ),
        ),

      ],
    );
  }
}
