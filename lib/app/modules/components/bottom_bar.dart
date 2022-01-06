import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/app/modules/contacts/views/contacts_view.dart';
import 'package:paypal/app/modules/home/views/home_view.dart';
import 'package:paypal/app/modules/wallet/views/wallet_view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 43, vertical: 16),
        width: Get.width,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTabbar(
              tittle: "Home",
              svgAsset: "assets/icons/home.svg",
              onWidget: true,
              onTap: () => Get.to(
                () => HomeView(),
                transition: Transition.noTransition,
              ),
            ),
            IconTabbar(
              tittle: "Contacts",
              svgAsset: "assets/icons/person.svg",
              onTap: () => Get.to(
                () => ContactsView(),
                transition: Transition.noTransition,
              ),
            ),
            IconTabbar(
              tittle: "Wallet",
              svgAsset: "assets/icons/wallet.svg",
              onTap: () => Get.to(
                () => WalletView(),
                transition: Transition.noTransition,
              ),
            ),
            IconTabbar(
              tittle: "Settings",
              svgAsset: "assets/icons/setting.svg",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class IconTabbar extends StatelessWidget {
  const IconTabbar({
    Key? key,
    required this.tittle,
    required this.svgAsset,
    required this.onTap,
    this.onWidget = false,
  }) : super(key: key);

  final String tittle;
  final String svgAsset;
  final bool onWidget;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              svgAsset,
              color: onWidget ? Color(0XFF0070BA) : Color(0XFF243656),
            ),
            SizedBox(height: 4),
            Text(
              tittle,
              style: GoogleFonts.manrope(
                  color: onWidget ? Color(0XFF0070BA) : Color(0XFF243656),
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
