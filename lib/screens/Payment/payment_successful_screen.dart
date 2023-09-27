import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/Payment Successful.png'),
            const SizedBox(
              height: 29,
            ),
            Text(
              'Payment Successful!',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'We have emailed you the receipt.',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xff8F8FA6),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color(0xff6A90F2).withOpacity(0.31),
                  blurRadius: 16,
                  offset: const Offset(0, 10),
                )
              ]),
              child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, '/rate_order_screen'),
                  child: Text(
                    'Finish!',
                    style: GoogleFonts.quicksand(
                      fontSize: 18.8,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
