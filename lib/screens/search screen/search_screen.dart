import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Search'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Product Name…',
                  hintStyle: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff9E9DB0)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xff474459),
                      width: 0.1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 132,
                        width: 132,
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, '/product_details_screen'),
                          child: Image.asset('images/hand bag.png'),
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
                  );
                },
              ),
            ],
          ),
        ));
  }
}
