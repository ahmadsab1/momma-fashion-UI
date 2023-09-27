import 'package:flutter/material.dart';

class VerifyTextField extends StatefulWidget {
  const VerifyTextField({
    super.key,
    required this.controllertext,
  });

  final TextEditingController controllertext;

  @override
  State<VerifyTextField> createState() => _VerifyTextFieldState();
}

class _VerifyTextFieldState extends State<VerifyTextField> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff151C27).withOpacity(0.2),
            blurRadius: 21,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          setState(() {
            _color = widget.controllertext.text.isEmpty
                ? Colors.white
                : const Color(0xff6A90F2);
          });
        },
        controller: widget.controllertext,
        cursorWidth: 1,
        cursorHeight: 30,
        cursorColor: const Color(
          0xffA8ADB4,
        ),
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: _color,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
