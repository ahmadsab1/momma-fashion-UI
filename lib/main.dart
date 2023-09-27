import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/Payment/payment_mode_screen.dart';
import 'package:momma_fashion_task1/screens/Payment/payment_successful_screen.dart';
import 'package:momma_fashion_task1/screens/Payment/rate_order_screen.dart';
import 'package:momma_fashion_task1/screens/about%20screen/about_screen.dart';
import 'package:momma_fashion_task1/screens/account/reset_password_screen.dart';
import 'package:momma_fashion_task1/screens/account/signin_screen.dart';
import 'package:momma_fashion_task1/screens/account/signup_screen.dart';
import 'package:momma_fashion_task1/screens/account/verify_account_screen.dart';
import 'package:momma_fashion_task1/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:momma_fashion_task1/screens/home_screen_nav/product_details_screen.dart';
import 'package:momma_fashion_task1/screens/more%20screens/favorites_screen.dart';
import 'package:momma_fashion_task1/screens/more%20screens/order_details_screen.dart';
import 'package:momma_fashion_task1/screens/more%20screens/orders_history_screen.dart';
import 'package:momma_fashion_task1/screens/more%20screens/profile_screen.dart';
import 'package:momma_fashion_task1/screens/outboarding/outboarding_screen.dart';
import 'package:momma_fashion_task1/screens/search%20screen/search_screen.dart';
import 'package:momma_fashion_task1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: GoogleFonts.quicksand(
              color: const Color(0xff474559),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            iconTheme: const IconThemeData(color: Colors.black)),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6A90F2),
            minimumSize: const Size(double.infinity, 53),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: GoogleFonts.roboto(
            fontSize: 22,
            fontWeight: FontWeight.w300,
            color: const Color(0xff9391A4),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffD0D0D0),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffD0D0D0),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/sign_in_screen': (context) => const SignInScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/verify_account': (context) => const VerifyAccountScreen(),
        '/bottom_bar_screen': (context) => const BottomBarScreen(),
        '/product_details_screen': (context) => const ProductDetailsScreen(),
        '/payment_mode_screen': (context) => const PaymentModeScreen(),
        '/rate_order_screen': (context) => const RateOrderScreen(),
        '/profile_screen': (context) => const ProfileScreen(),
        '/favorites_screen': (context) => const FavoritesScreen(),
        '/orders_history_screen': (context) => const OrdersHistoryScreen(),
        '/order_details_screen': (context) => const OrderDetailsScreen(),
        '/about_screen': (context) => const AboutScreen(),
        '/search_screen': (context) => const SearchScreen(),
        '/reset_password_screen': (context) => const ResetPassword(),
        '/payment_successful_screen': (context) =>
            const PaymentSuccessfulScreen(),
      },
    );
  }
}
