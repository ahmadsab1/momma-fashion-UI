import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/home_indiator.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({
    super.key,

  });



  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  final _pageController = PageController(viewportFraction: 0.877);

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          SizedBox(
            height: 198,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _page = value;
                });
              },
              controller: _pageController,
              allowImplicitScrolling: true,
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, '/product_details_screen'),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF0F1F6),
                    ),
                    margin: const EdgeInsets.only(right: 15),
                    height: 198,
                    width: 270,
                    child: Image.asset('images/bag1.png'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF0F1F6),
                  ),
                  margin: const EdgeInsets.only(right: 15),
                  height: 198,
                  width: 270,
                  child: Image.asset('images/bag2.png'),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, '/product_details_screen'),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF0F1F6),
                    ),
                    margin: const EdgeInsets.only(right: 15),
                    height: 198,
                    width: 270,
                    child: Image.asset('images/bag1.png'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeIndiator(isSelected: _page == 0),
              HomeIndiator(isSelected: _page == 1),
              HomeIndiator(isSelected: _page == 2),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 50,
                  mainAxisSpacing: 31,
                  childAspectRatio: 132 / 230),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Image.asset('images/hand bag.png'),
                        const Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xff9E9DB0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
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
                      height: 15,
                    ),
                    Text(
                      "\$10.00",
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
          )
        ],
      ),
    );
  }
}
