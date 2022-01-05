import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.name,
    required this.hoursAgo,
    required this.cash,
  }) : super(key: key);

  final String name;
  final String hoursAgo;
  final int cash;

  @override
  Widget build(BuildContext context) {
    bool coloring = false;
    if (cash > 0) {
      coloring = true;
    }
    return Container(
      padding: EdgeInsets.all(15), margin: const EdgeInsets.only(bottom: 10),
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 8),
            color: Color(0XFF1546A0).withOpacity(.2),
            blurRadius: 28,
            spreadRadius: -16,
          )
        ],
      ),

      // row pertama
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0XFFF5F7FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "${name[0].toUpperCase()}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  Text(
                    "$hoursAgo",
                    style: GoogleFonts.manrope(
                        fontSize: 12, color: Color(0XFF243656)),
                  ),
                ],
              )
            ],
          ),
          Text(
            "\$$cash",
            style: GoogleFonts.manrope(
                color: coloring ? Color(0XFF37D39B) : Color(0XFFF47090),
                fontSize: 13,
                letterSpacing: .5),
          )
        ],
      ),
    );
  }
}
