import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Favorites'),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 132,
                  width: 132,
                  child: Stack(
                    children: [
                      Image.asset('images/hand bag.png'),
                      const Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xffFF0000),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Hand bags',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff474559),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$10.00',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff9E9DB0),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
