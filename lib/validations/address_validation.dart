import 'package:get/get.dart';

class AddressValidation extends GetxController {
  final RxBool _enableButton = false.obs;

  bool get enableButton => this._enableButton.value;

  void changeStateButton(String cep) {
    print(cep.length);
    if (cep.length >= 9) {
      this._enableButton.value = true;
    } else {
      this._enableButton.value = false;
    }
  }
}
