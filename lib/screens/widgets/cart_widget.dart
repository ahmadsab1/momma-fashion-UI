import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatefulWidget {
  CartWidget({
    required this.image,
    required this.price,
    required this.quantity,
    required this.title,
    required this.supTitle,
    super.key,
  });

  final String image;
  final String title;
  final String supTitle;
  final int price;
  int quantity;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  late int copyPrice = widget.price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 18,
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 82,
              width: 87,
              child: Image.asset(
                widget.image,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  widget.supTitle,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.33,
                    color: const Color(0xffA1A1B4),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '\$$copyPrice',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.cancel_outlined,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.quantity--;
                          copyPrice > 100
                              ? copyPrice -= widget.price
                              : copyPrice = 100;
                        });
                      },
                      icon: Image.asset(
                        'images/remove.png',
                      ),
                    ),
                    Text(
                      '${widget.quantity}',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.quantity++;
                          copyPrice += widget.price;
                        });
                      },
                      icon: Image.asset(
                        'images/add.png',
                      ),
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
              ],
            ),
          ],
        ),
      ),
    );
  }
}
