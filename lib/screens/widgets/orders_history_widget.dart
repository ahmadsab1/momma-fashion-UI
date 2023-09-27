import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersHistoryWidget extends StatefulWidget {
  const OrdersHistoryWidget({
    required this.image,
    required this.price,
    required this.title,
    required this.suptitle,
    required this.ontap,
    super.key,
  });

  final String image;
  final String title;
  final String suptitle;
  final int price;
  final Function() ontap;

  @override
  State<OrdersHistoryWidget> createState() => _OrdersHistoryWidgetState();
}

class _OrdersHistoryWidgetState extends State<OrdersHistoryWidget> {
  late int copyPrice = widget.price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
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
          padding: const EdgeInsets.symmetric(vertical: 25),
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
                    widget.suptitle,
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
            ],
          ),
        ),
      ),
    );
  }
}
