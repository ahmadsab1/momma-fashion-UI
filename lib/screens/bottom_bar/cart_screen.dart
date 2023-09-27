import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/cart_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3 items available',
              style: GoogleFonts.quicksand(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CartWidget(
              image: 'images/bag1.png',
              price: 100,
              quantity: 2,
              title: 'Handbag',
              supTitle: 'from boots category',
            ),
            const SizedBox(
              height: 9,
            ),
            CartWidget(
              image: 'images/backpack.png',
              price: 120,
              quantity: 2,
              title: 'Backpack',
              supTitle: 'from boots category',
            ),
            const SizedBox(
              height: 9,
            ),
            CartWidget(
              image: 'images/bag2.png',
              price: 88,
              quantity: 2,
              title: 'Backpack',
              supTitle: 'from boots category',
            ),
            const SizedBox(
              height: 48,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Sub total:',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffA1A1B4),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$100',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Tax(15%):",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffA1A1B4),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$15',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffECECEC),
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      "Total:",
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$215',
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/payment_mode_screen'),
                      child: Text(
                        'Checkout',
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                          color: Color(0xffC9D8E7),
                          width: 1,
                        ),
                        elevation: 0,
                      ),
                      onPressed: () => _cancelOrder(),
                      child: Text(
                        'Cancel Order',
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff474459),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _cancelOrder() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          iconPadding: const EdgeInsets.symmetric(vertical: 40),
          actionsPadding:
              const EdgeInsets.symmetric(vertical: 44, horizontal: 28),
          content: Text(
            "Are you sure you want to cancel this order?",
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: const Color(0xff23203F),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          icon: Image.asset(
            'images/cancel.png',
            height: 92,
            width: 92,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(
                context,
                '/bottom_bar_screen',
              ),
              child: Text(
                'Cancel',
                style: GoogleFonts.nunitoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(
                  width: 1,
                  color: Color(0xffE1E1E7),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Not Now!',
                style: GoogleFonts.nunitoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff9293A3),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
