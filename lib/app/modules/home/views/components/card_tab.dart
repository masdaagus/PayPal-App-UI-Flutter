import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTab extends StatelessWidget {
  const CardTab({
    Key? key,
    required this.pick,
    required this.tittle,
    required this.svgIcon,
  }) : super(key: key);

  final bool pick;

  final String tittle;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Color(0XFF0070BA), Color(0XFF1546A0)];
    return Container(
      padding: const EdgeInsets.all(20),
      width: Get.width * .25,
      height: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: pick ? colors : [Colors.white, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: pick
              ? [
                  BoxShadow(
                    blurRadius: 48,
                    offset: Offset(2, 8),
                    spreadRadius: -16,
                    color: Color(0XFF1546A0).withOpacity(.1),
                  )
                ]
              : null,
          border: Border.all(
            color: Color(0XFF005EA6).withOpacity(.3),
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(svgIcon),
          SizedBox(height: 20),
          Text(
            tittle,
            style: GoogleFonts.manrope(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: pick ? Colors.white : Color(0XFF005EA6),
            ),
          )
        ],
      ),
    );
  }
}
