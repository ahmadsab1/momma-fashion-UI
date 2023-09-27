import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/star_widget.dart';

class RateOrderScreen extends StatefulWidget {
  const RateOrderScreen({super.key});

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "How was your order\n experiences from it Momma?",
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StarWidget(),
              StarWidget(),
              StarWidget(),
              StarWidget(),
              StarWidget(),
            ],
          ),
          const SizedBox(
            height: 39,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 24,
                  offset: const Offset(0, 19),
                )
              ]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/bottom_bar_screen', (route) => false),
                child: Text(
                  'SUBMIT',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          TextButton(
            style: TextButton.styleFrom(
                visualDensity: const VisualDensity(
                    vertical: VisualDensity.minimumDensity)),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/bottom_bar_screen', (route) => false),
            child: Text(
              'Not now!',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xff9A98A8),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
