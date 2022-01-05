import 'package:get/get.dart';

import 'package:paypal/app/modules/contacts/bindings/contacts_binding.dart';
import 'package:paypal/app/modules/contacts/views/contacts_view.dart';
import 'package:paypal/app/modules/home/bindings/home_binding.dart';
import 'package:paypal/app/modules/home/views/home_view.dart';
import 'package:paypal/app/modules/login/bindings/login_binding.dart';
import 'package:paypal/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTS,
      page: () => ContactsView(),
      binding: ContactsBinding(),
    ),
  ];
}
