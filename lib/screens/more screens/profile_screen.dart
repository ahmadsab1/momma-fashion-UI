import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: SingleChildScrollView(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Orders Count',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff444557),
                        ),
                      ),
                      Text(
                        '13',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff9E9DB0),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 1,
                    color: const Color(0xffE8E8E8),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Total Paid',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff444557),
                        ),
                      ),
                      Text(
                        "2342.55\$",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff9E9DB0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffE8E8E8),
                height: 30,
              ),
              const SizedBox(
                height: 35,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
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
