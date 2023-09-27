import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/out_boarding_indiator.dart';
import 'package:momma_fashion_task1/screens/widgets/outboarding.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({super.key});

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _page < 2,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    },
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.quicksand(
                        color: const Color(0xff6C8EF2),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ),
            // const Spacer(),
            Expanded(
              flex: 2,
              child: PageView(
                onPageChanged: (value) {
                  setState(() => _page = value);
                },
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  OutBoardingWidget(
                      image: 'images/Out-Boarding1-1.png',
                      title: 'Welcome!',
                      body:
                          "Now were up in the big leagues gettingour\n turn at bat. The Brady Bunch that's the way\n we  Brady Bunch.."),
                  OutBoardingWidget(
                      image: 'images/Out-Boarding2-2.png',
                      title: 'Add to cart',
                      body:
                          "Now were up in the big leagues gettingour\n turn at bat. The Brady Bunch that's the way\n we  Brady Bunch.."),
                  OutBoardingWidget(
                      image: 'images/Out-Boarding3-3.png',
                      title: 'Enjoy Purchase!',
                      body:
                          "Now were up in the big leagues gettingour\n turn at bat. The Brady Bunch that's the way\n we  Brady Bunch.."),
                ],
              ),
            ),
            // const Spacer(),
            Expanded(
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutBoardingIndicator(
                        isSelected: _page == 0,
                        marginEng: 10,
                      ),
                      OutBoardingIndicator(
                        isSelected: _page == 1,
                        marginEng: 10,
                      ),
                      OutBoardingIndicator(isSelected: _page == 2),
                    ],
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  Visibility(
                    visible: _page == 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30 ),
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, '/sign_in_screen'),
                        child: Text(
                          'START',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
