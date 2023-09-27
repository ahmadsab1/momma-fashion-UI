import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    required this.ontap,
    required this.leadingIcon,
    required this.title,
    super.key,
  });

  final Function() ontap;
  final IconData leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffDEE8F2),
          width: 1,
        ),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 31),
        onTap: ontap,
        leading: Icon(
          leadingIcon,
          color: const Color(0xff87879D),
        ),
        title: Text(
          title,
          style: GoogleFonts.quicksand(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: const Color(0xff87879D),
          ),
        ),
      ),
    );
  }
}
