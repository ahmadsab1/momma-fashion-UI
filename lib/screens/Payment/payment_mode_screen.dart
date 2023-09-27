import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentModeScreen extends StatefulWidget {
  const PaymentModeScreen({super.key});

  @override
  State<PaymentModeScreen> createState() => _PaymentModeScreenState();
}

class _PaymentModeScreenState extends State<PaymentModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Payment mode'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 214,
                width: 336,
                decoration: BoxDecoration(
                  color: const Color(0xff6C8EF2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.credit_card,
                        color: Colors.white,
                        size: 40,
                      ),
                      const Spacer(),
                      Text(
                        '1234 5678 9876 5432',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '1234',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color(0xffC7C7C7),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'James Born',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'EXPIRY',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                              color: const Color(0xffC7C7C7),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            '03/17',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 58,
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 31),
                    hintText: 'Card Number'),
              ),
              const SizedBox(
                height: 26,
              ),
              const TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 31),
                    hintText: 'MM/YY'),
              ),
              const SizedBox(
                height: 26,
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 31),
                    hintText: 'CCV'),
              ),
              const SizedBox(
                height: 42,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/payment_successful_screen',
                        (route) => false,
                      ),
                  child: Text(
                    'Proceed',
                    style: GoogleFonts.roboto(
                      fontSize: 16.67,
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
