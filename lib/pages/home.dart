import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_address/controller/address_controller.dart';
import 'package:search_address/theme/colors.dart';
import 'package:search_address/validations/address_validation.dart';
import 'package:search_address/widgets/btn.dart';
import 'package:search_address/widgets/btn_clean_all.dart';
import 'package:search_address/widgets/card_address.dart';
import 'package:search_address/widgets/text_form.dart';

class Home extends GetView<AddressController> {
  final validation = Get.find<AddressValidation>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBackgroundQueTodosUsam,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: Text(
                  "Buscar endereço",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
                child: Row(
                  children: [
                    Flexible(
                      child: TextForm(
                        controller: controller.cepController,
                        onChanged: (value) => validation.changeStateButton(value),
                      ),
                    ),
                    SizedBox(width: 12),
                    Obx(
                      () => Btn(
                        onTap: () => controller.searchAddress(),
                        enable: validation.enableButton,
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Visibility(
                  visible: controller.existDataintoListOfAddres(),
                  replacement: Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Center(
                      child: Icon(
                        Icons.search_off,
                        size: 60,
                        color: corQuandoEstouTriste,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
                    child: Row(
                      children: [
                        Obx(
                          () => Text(
                            "Resultados (${controller.listOfAddress.length})",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Spacer(),
                        Flexible(
                          child: BtnCleanAll(
                            onTap: () => controller.cleanListOfAddress(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.listOfAddress.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 5),
                        child: Obx(
                          () => CardAddress(
                            cep: controller.listOfAddress[index].cep,
                            state: controller.listOfAddress[index].state,
                            city: controller.listOfAddress[index].city,
                            neighborhood: controller.listOfAddress[index].neighborhood,
                            street: controller.listOfAddress[index].street,
                            onRemove: () => controller.removeAddressFromList(index),
                            onShare: () =>
                                controller.shareAddress(controller.listOfAddress[index].cep),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
