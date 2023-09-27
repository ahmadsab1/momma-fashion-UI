import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/orders_history_widget.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
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
              OrdersHistoryWidget(
                image: 'images/bag1.png',
                price: 100,
                title: 'Handbag',
                suptitle: 'from boots category',
                ontap: () {},
              ),
              const SizedBox(
                height: 9,
              ),
              OrdersHistoryWidget(
                image: 'images/backpack.png',
                price: 120,
                title: 'Backpack',
                suptitle: 'from boots category',
                ontap: () {},
              ),
              const SizedBox(
                height: 9,
              ),
              OrdersHistoryWidget(
                image: 'images/bag2.png',
                price: 88,
                title: 'Backpack',
                suptitle: 'from boots category',
                ontap: () {},
              ),
              const SizedBox(
                height: 9,
              ),
              OrdersHistoryWidget(
                image: 'images/bag2.png',
                price: 88,
                title: 'Backpack',
                suptitle: 'from boots category',
                ontap: () {},
              ),
              const SizedBox(
                height: 50,
              ),
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
                  Container(
                    height: 50,
                    width: 79,
                    decoration:  BoxDecoration(
                      color: const Color(0xff6C8EF2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        '\$215',
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
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
