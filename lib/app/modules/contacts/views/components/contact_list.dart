import 'package:flutter/material.dart';

import '../../data.dart';
import 'contact_card.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: email.length,
        itemBuilder: (context, index) {
          name.sort();
          return ContactCard(
            name: name[index],
            email: email[index],
          );
        },
      ),
    );
  }
}
