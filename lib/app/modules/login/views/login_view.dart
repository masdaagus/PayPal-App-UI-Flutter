import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:paypal/app/modules/login/views/components/text_button.dart';

import '../controllers/login_controller.dart';
import 'components/login_button.dart';
import 'components/text_input.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 170),
                height: 200,
                child: Center(
                  child: SvgPicture.asset("assets/images/paypal.svg"),
                ),
              ),
              TextInput(hintText: "Enter your name or e-mail"),
              TextInput(hintText: "Password", obscured: true),
              LoginButton(ontap: () => Get.toNamed('/home')),
              ButtonText(tittle: "Having trouble logging in ?"),
              SizedBox(height: 60),
              ButtonText(tittle: "Sign up"),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
