import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.tittle,
  }) : super(key: key);
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("tapped having trouble"),
      child: Text(
        tittle,
        style: TextStyle(
          color: Color(0XFF243656).withOpacity(.6),
          fontSize: 14,
        ),
      ),
    );
  }
}
