import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_tab.dart';

class TabSendAndRequest extends StatelessWidget {
  const TabSendAndRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardTab(
              pick: true,
              tittle: "Send\nMoney",
              svgIcon: "assets/images/send.svg"),
          CardTab(
              pick: false,
              tittle: "Request\nPayment",
              svgIcon: "assets/images/upload.svg"),
          Container(
            width: Get.width * .15,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
