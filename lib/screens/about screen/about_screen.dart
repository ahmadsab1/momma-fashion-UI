import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('images/logo.png')),
            const SizedBox(
              height: 23,
            ),
            Center(child: Image.asset('images/FASHIONS.png')),
            const Divider(
              thickness: 1,
              color: Color(0xffDBDEE3),
              height: 46,
            ),
            Text(
              'About',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: const Color(0xff474559),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical professor.",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: const Color(0xff66647B),
                  height: 1.5),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffDBDEE3),
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 161,
                    width: 162,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset('images/about photo2.png',width: double.infinity,fit: BoxFit.cover,),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 11),
                    clipBehavior: Clip.antiAlias,
                    height: 161,
                    width: 162,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset('images/about photo1.png',width: double.infinity,fit: BoxFit.cover,),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 11),
                    clipBehavior: Clip.antiAlias,
                    height: 161,
                    width: 162,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset('images/about photo3.png',width: double.infinity,fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
