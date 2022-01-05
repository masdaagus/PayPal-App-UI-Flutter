import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 65,
          width: 280,
          margin: const EdgeInsets.only(bottom: 60),
          decoration: BoxDecoration(
              color: Colors.amber.withOpacity(.5),
              borderRadius: BorderRadius.circular(18),
              gradient: LinearGradient(
                colors: [
                  Color(0XFF0070BA),
                  Color(0XFF1546A0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 48,
                  spreadRadius: -18,
                  color: Color(0XFF1546A0),
                  offset: Offset(0, 24),
                )
              ]),
          child: ElevatedButton(
            onPressed: ontap,
            child: Text("Log In"),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 18, color: Colors.white)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor:
                  MaterialStateProperty.all(Colors.white.withOpacity(.1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          )),
    );
  }
}
