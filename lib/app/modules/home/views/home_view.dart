import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/app/modules/home/views/data.dart';
import '../controllers/home_controller.dart';
import 'components/activity.dart';
import 'components/card_item.dart';
import 'components/header.dart';
import 'components/tab_send_req.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderInfo(),
              TabSendAndRequest(),
              Activity(),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: nama.length,
                    itemBuilder: (context, index) {
                      return ItemCard(
                        name: nama[index],
                        hoursAgo: lastInfo[index],
                        cash: nominal[index],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              width: Get.width,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 46,
                    spreadRadius: -16,
                    color: Color(0XFF1546A0).withOpacity(.1),
                    offset: Offset(0, -10),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color(0XFF1546A0),
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.manrope(
                            color: Color(0XFF1546A0), fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "tes"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "tes"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "tes",
      //     ),
      //   ],
      // ),
    );
  }
}
