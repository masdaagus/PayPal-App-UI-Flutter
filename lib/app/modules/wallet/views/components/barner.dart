import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Barner extends StatelessWidget {
  const Barner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
        ),
        Container(
          height: 192,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFF0070BA).withOpacity(.85),
                Color(0XFF1546A0).withOpacity(.85),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        SvgPicture.asset(
          "assets/images/wallet-logo.svg",
          color: Colors.white.withOpacity(.4),
        ),
        Positioned(
          top: 55,
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  "Your Wallet",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset("assets/icons/pencil.svg"),
              ],
            ),
          ),
        ),
        Positioned(
          top: 135,
          right: Get.width / 2 - 61,
          child: CircleAvatar(
            radius: 62,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                "assets/images/orang-besar.png",
              ),
            ),
          ),
        )
      ],
    );
  }
}
