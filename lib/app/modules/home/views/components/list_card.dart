import 'package:flutter/material.dart';
import 'package:paypal/app/modules/home/views/data.dart';

import 'card_item.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
