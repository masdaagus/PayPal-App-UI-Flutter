import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Info",
            style: GoogleFonts.manrope(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 20),
          PersonalInfoText(
            tittle: "Name ",
            field: "Wahyu Tromol",
          ),
          PersonalInfoText(
            tittle: "Email  ",
            field: "wahyu_tromol33@gmail.com",
          ),
          PersonalInfoText(
            tittle: "Phone",
            field: "+62812 6074 1111",
          ),
        ],
      ),
    );
  }
}

class PersonalInfoText extends StatelessWidget {
  const PersonalInfoText({
    Key? key,
    required this.tittle,
    required this.field,
  }) : super(key: key);

  final String tittle;
  final String field;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Text(
            tittle,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.manrope(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 50),
          Text(
            field,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.manrope(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
