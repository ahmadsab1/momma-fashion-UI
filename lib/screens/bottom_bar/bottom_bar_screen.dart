import 'package:flutter/material.dart';
import 'package:momma_fashion_task1/screens/bottom_bar/cart_screen.dart';
import 'package:momma_fashion_task1/screens/bottom_bar/home_screen.dart';
import 'package:momma_fashion_task1/screens/bottom_bar/more_screen.dart';
import 'package:momma_fashion_task1/screens/models/bottom_bar_model.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;
  final List<BottomBar> _bottomBarScreens = <BottomBar>[
    const BottomBar('Home', HomeScreen()),
    const BottomBar('Cart', CartScreen()),
    const BottomBar('', MoreScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bottomBarScreens[_currentIndex].title == ''
          ? null
          : AppBar(
              title: Text(_bottomBarScreens[_currentIndex].title),
              actions: [
                IconButton(
                  onPressed: _bottomBarScreens[_currentIndex].title == 'Home'
                      ? () => Navigator.pushNamed(context, '/search_screen')
                      : null,
                  icon: Icon(Icons.search,
                      color: _bottomBarScreens[_currentIndex].title == 'Home'
                          ? const Color(0xff474459)
                          : Colors.transparent),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: const Color(0xff6C8EF2),
        unselectedItemColor: const Color(0xff9E9DB0),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: _bottomBarScreens[_currentIndex].widget,
    );
  }
}
