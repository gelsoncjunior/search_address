import 'package:dio/dio.dart';
import 'package:search_address/settings/url.dart';

class AddressProvider {
  final Dio _dio;

  AddressProvider(this._dio);

  Future<Map<String, dynamic>> searchCep(String cep) async {
    try {
      final String endpoint = apiBrasil + "/$cep";
      final Response response = await this._dio.get(
            endpoint,
            options: Options(
              followRedirects: true,
              validateStatus: (status) {
                return status <= 600;
              },
            ),
          );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return {};
      }
    } catch (e) {
      return {};
    }
  }
}
