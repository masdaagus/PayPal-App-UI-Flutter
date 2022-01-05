import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
            gradient: LinearGradient(
              colors: [Color(0XFF0070BA), Color(0XFF1546A0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SvgPicture.asset(
          "assets/images/logo-paypal.svg",
          color: Colors.white.withOpacity(.1),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/images/logo.svg",
                    height: 60,
                    color: Colors.white.withOpacity(.8),
                  ),
                  Image.asset("assets/images/orang.png")
                ],
              ),
              SizedBox(height: 24),
              Text(
                "Hello, Masda!",
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  color: Colors.white.withOpacity(.5),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "\$ 256.14",
                style: GoogleFonts.manrope(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "Your balance",
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
