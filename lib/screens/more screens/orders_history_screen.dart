import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/orders_history_widget.dart';

class OrdersHistoryScreen extends StatefulWidget {
  const OrdersHistoryScreen({super.key});

  @override
  State<OrdersHistoryScreen> createState() => _OrdersHistoryScreenState();
}

class _OrdersHistoryScreenState extends State<OrdersHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders History'),
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
                '3 Orders',
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
                ontap: () =>
                    Navigator.pushNamed(context, '/order_details_screen'),
              ),
              const SizedBox(
                height: 9,
              ),
              OrdersHistoryWidget(
                image: 'images/backpack.png',
                price: 120,
                title: 'Backpack',
                suptitle: 'from boots category',
                ontap: () =>
                    Navigator.pushNamed(context, '/order_details_screen'),
              ),
              const SizedBox(
                height: 9,
              ),
              OrdersHistoryWidget(
                image: 'images/bag2.png',
                price: 88,
                title: 'Backpack',
                suptitle: 'from boots category',
                ontap: () =>
                    Navigator.pushNamed(context, '/order_details_screen'),
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
