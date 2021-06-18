import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get/get.dart';
import 'package:search_address/model/address_cep_model.dart';
import 'package:search_address/repositories/address_repository.dart';
import 'package:search_address/settings/helpers.dart';
import 'package:search_address/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class AddressController extends GetxController {
  final RxList _data = <AddressCepModel>[].obs;

  final AddressRepository _repostiory;

  AddressController(this._repostiory);

  final cepController = MaskedTextController(mask: maskCep);

  get listOfAddress => this._data;

  void searchAddress() async {
    final AddressCepModel address = await this._repostiory.searchAddress(cepController.text);
    if (address.cep != null) {
      this._data.add(address);
    } else {
      Get.snackbar(
        'Não encontrado',
        'CEP ${this.cepController.text} não encontrado!',
        backgroundColor: corVermelhoBonito,
        colorText: Colors.white,
        icon: Icon(Icons.search_off, color: Colors.white),
      );
    }
  }

  bool existDataintoListOfAddres() {
    if (this._data.length > 0) {
      return true;
    } else {
      return false;
    }
  }

  void cleanListOfAddress() => this._data.clear();

  void removeAddressFromList(int index) {
    this._data.removeAt(index);
  }

  void shareAddress(String cep) {
    final String body = "Olá, você está usando o searchAdress!\n\nCEP: $cep";
    Share.share(body);
  }
}
