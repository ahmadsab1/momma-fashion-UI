import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    super.key,
    required bool isSelected,
    double marginEng = 0,
  })  : _isSelected = isSelected,
        _marginEng = marginEng;

  final bool _isSelected;
  final double _marginEng;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: _marginEng),
      height: 4,
      width: 18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: _isSelected ? const Color(0xff6A90F2) : const Color(0xffDDDDDD),
      ),
    );
  }
}
