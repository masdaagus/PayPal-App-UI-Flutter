import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/app/modules/components/bottom_bar.dart';

import '../controllers/wallet_controller.dart';
import 'components/bank_cards.dart';
import 'components/barner.dart';
import 'components/card_bank.dart';
import 'components/personal_info.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Barner(),
              PersonalInfo(),
              Tittle(),
              BankCards(),
            ],
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
