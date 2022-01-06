import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBank extends StatelessWidget {
  const CardBank({
    Key? key,
    required this.icon,
    required this.tittle,
    required this.number,
  }) : super(key: key);

  final String icon;
  final String tittle;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
      padding: const EdgeInsets.all(18),
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
          SvgPicture.asset(icon),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 22, child: Text(tittle)),
              Container(
                height: 17,
                child: Text(
                  number,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 44, left: 32, right: 32, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "May banking card",
            style: GoogleFonts.manrope(
              fontSize: 13,
              color: Colors.black45,
            ),
          ),
          Row(
            children: [
              Icon(Icons.add, color: Colors.black45),
              SizedBox(width: 6),
              Text(
                "Add",
                style: TextStyle(
                  color: Colors.black45,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
