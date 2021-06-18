import 'package:search_address/model/address_cep_model.dart';
import 'package:search_address/provider/address_provider.dart';

class AddressRepository {
  final AddressProvider _provider;

  AddressRepository(this._provider);

  Future<AddressCepModel> searchAddress(String cep) async {
    final Map<String, dynamic> data = await this._provider.searchCep(cep);
    final AddressCepModel address = AddressCepModel.fromJson(data);
    return address;
  }
}
