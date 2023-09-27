import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/profile_listtile_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 42),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                'images/profile photo.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'John Deo',
              style: GoogleFonts.quicksand(
                fontSize: 19.66,
                fontWeight: FontWeight.bold,
                color: const Color(0xff444657),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'johndeo@yourmail.com',
              style: GoogleFonts.quicksand(
                fontSize: 17.2,
                fontWeight: FontWeight.w500,
                color: const Color(0xff87879D),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ProfileListTileWidget(
              ontap: () => Navigator.pushNamed(context, '/profile_screen'),
              leadingIcon: Icons.person,
              title: 'My Profile',
            ),
            ProfileListTileWidget(
              ontap: () => Navigator.pushNamed(context, '/favorites_screen'),
              leadingIcon: Icons.favorite,
              title: 'Favorites',
            ),
            ProfileListTileWidget(
              ontap: () =>
                  Navigator.pushNamed(context, '/orders_history_screen'),
              leadingIcon: Icons.list_alt,
              title: 'Orders',
            ),
            ProfileListTileWidget(
              ontap: () {},
              leadingIcon: Icons.security,
              title: 'Terms & Conditions',
            ),
            ProfileListTileWidget(
              ontap: () {},
              leadingIcon: Icons.lock,
              title: 'Privacy Policy',
            ),
            ProfileListTileWidget(
              ontap: () =>
                  Navigator.pushReplacementNamed(context, '/sign_in_screen'),
              leadingIcon: Icons.login,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
