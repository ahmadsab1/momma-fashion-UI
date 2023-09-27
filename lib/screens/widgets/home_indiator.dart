import 'package:flutter/material.dart';

class HomeIndiator extends StatelessWidget {
  const HomeIndiator({
    super.key,
    required bool isSelected,
  }) : _isSelected = isSelected;

  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return TabPageSelectorIndicator(
      backgroundColor:
          _isSelected ? const Color(0xff474459) : const Color(0xffD7D7D7),
      borderColor: Colors.transparent,
      size: 15,
    );
  }
}
