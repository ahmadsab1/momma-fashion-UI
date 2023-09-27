import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion_task1/screens/widgets/tab_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            isScrollable: true,
            labelColor: const Color(0xff474559),
            indicatorColor: const Color(0xff6A90F2),
            indicatorPadding: const EdgeInsets.only(
              top: 10,
              left: 5,
            ),
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: const Color(0xff9E9DB0),
            labelStyle: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            tabs: const [
              TapRegion(
                child: Text('Kinsa'),
              ),
              TapRegion(
                child: Text('Womens'),
              ),
              TapRegion(
                child: Text('Handbags'),
              ),
              TapRegion(
                child: Text('Boots'),
              ),
              TapRegion(
                child: Text('Mens'),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TabBarWidget(),
                TabBarWidget(),
                TabBarWidget(),
                TabBarWidget(),
                TabBarWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
