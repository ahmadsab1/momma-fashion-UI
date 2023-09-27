import 'package:flutter/material.dart';

class StarWidget extends StatefulWidget {
  const StarWidget({
    super.key,
  });

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  String _star = 'images/selected star.png';

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity:
          const VisualDensity(vertical: VisualDensity.minimumDensity),
      onPressed: () {
        setState(
          () => _star == 'images/selected star.png'
              ? _star = 'images/unselected star.png'
              : _star = 'images/selected star.png',
        );
      },
      icon: Image.asset(
        _star,
      ),
    );
  }
}
