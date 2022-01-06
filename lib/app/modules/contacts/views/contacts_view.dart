import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/app/modules/components/bottom_bar.dart';
import '../controllers/contacts_controller.dart';
import 'components/contact_list.dart';
import 'components/search_widget.dart';

class ContactsView extends GetView<ContactsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: GoogleFonts.manrope(
            fontSize: 20,
            color: Color(0XFF243656),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0XFF243656),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              color: Color(0XFF243656),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SearchWidget(),
              SizedBox(height: 24),
              ContactList(),
            ],
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
