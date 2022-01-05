import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity extends StatelessWidget {
  const Activity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
        top: 30,
        right: 30,
        bottom: 10,
      ),
      width: Get.width,
      // color: Colors.red,
      child: Container(
        // color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activity",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View all",
                  style: GoogleFonts.manrope(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
