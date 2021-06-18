import 'package:get/get.dart';
import 'package:search_address/binding/init_binding.dart';
import 'package:search_address/pages/home.dart';

import 'app_pages.dart';

class AppRoutes {
  static final ROUTES = <GetPage>[
    GetPage(
      name: AppPages.HOME_PAGE,
      page: () => Home(),
      binding: InitBinding(),
    )
  ];
}
