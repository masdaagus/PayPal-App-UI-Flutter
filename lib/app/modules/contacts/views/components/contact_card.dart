import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0XFF1546A0).withOpacity(.2),
            blurRadius: 48,
            spreadRadius: -16,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0XFFF5F7FA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "${name[0].toUpperCase()}",
                style: GoogleFonts.manrope(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                email,
                style: GoogleFonts.manrope(
                  fontSize: 12,
                  letterSpacing: .4,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
