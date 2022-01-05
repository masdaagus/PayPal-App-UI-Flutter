import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    required this.hintText,
    this.obscured = false,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final bool obscured;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 280,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.black12)),
      child: TextField(
        style: TextStyle(color: Colors.black54),
        obscureText: obscured,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0XFF243656).withOpacity(.6)),
        ),
      ),
    );
  }
}
