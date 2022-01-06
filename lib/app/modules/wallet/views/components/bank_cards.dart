import 'package:flutter/material.dart';

import 'card_bank.dart';

class BankCards extends StatelessWidget {
  const BankCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          CardBank(
            icon: "assets/images/visa.svg",
            tittle: "Visa",
            number: "4*** **** ****2 5624",
          ),
          CardBank(
            icon: "assets/images/master-card.svg",
            tittle: "MasterCard",
            number: "4*** **** ****2 5624",
          ),
          CardBank(
            icon: "assets/images/visa.svg",
            tittle: "Visa",
            number: "4*** **** ****2 5624",
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
