import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:search_address/controller/address_controller.dart';
import 'package:search_address/provider/address_provider.dart';
import 'package:search_address/repositories/address_repository.dart';
import 'package:search_address/validations/address_validation.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio(), permanent: true);
    Get.lazyPut<AddressController>(() => AddressController(Get.find()));
    Get.lazyPut<AddressProvider>(() => AddressProvider(Get.find()));
    Get.lazyPut<AddressRepository>(() => AddressRepository(Get.find()));
    Get.lazyPut<AddressValidation>(() => AddressValidation());
  }
}
