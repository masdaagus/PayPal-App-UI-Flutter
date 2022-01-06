import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal/app/modules/components/bottom_bar.dart';
import '../controllers/home_controller.dart';
import 'components/activity.dart';
import 'components/header.dart';
import 'components/list_card.dart';
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
              ListCard(),
              SizedBox(height: 90),
            ],
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
