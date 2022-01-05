import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.search_rounded),
          SizedBox(width: 14),
          Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter a name or email",
                hintStyle: GoogleFonts.manrope(),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
