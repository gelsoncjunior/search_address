import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_address/pages/home.dart';
import 'package:search_address/route/app_pages.dart';
import 'package:search_address/route/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppPages.HOME_PAGE,
    getPages: AppRoutes.ROUTES,
    debugShowCheckedModeBanner: false,
  ));
}
