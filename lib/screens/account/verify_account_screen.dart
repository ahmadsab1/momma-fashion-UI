import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/verify_text_field.dart';

class VerifyAccountScreen extends StatefulWidget {
  const VerifyAccountScreen({super.key});

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  late TextEditingController _text1;
  late TextEditingController _text2;
  late TextEditingController _text3;
  late TextEditingController _text4;

  @override
  void initState() {
    _text1 = TextEditingController();
    _text2 = TextEditingController();
    _text3 = TextEditingController();
    _text4 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _text1.dispose();
    _text2.dispose();
    _text3.dispose();
    _text4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(52),
        child: Column(
          children: [
            Text(
              'Verify Your Account',
              style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: const Color(0xff23203F),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "We are sending OTP to validate your \n mobile number. Hang on!",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xff9192AE),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: VerifyTextField(
                    controllertext: _text1,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: VerifyTextField(
                    controllertext: _text2,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: VerifyTextField(
                    controllertext: _text3,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: VerifyTextField(controllertext: _text4),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'SMS has been sent to ',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff9192AE),
                  ),
                ),
                Text(
                  '1800 123 4567',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff23203F),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                shadowColor: Colors.black.withOpacity(0.6),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/bottom_bar_screen', (route) => false);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
