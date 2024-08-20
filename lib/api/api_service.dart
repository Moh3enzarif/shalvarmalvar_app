import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';
import 'package:shalvarmalvar_app/models/woocommerce/register_model.dart';

class ApiService {
  Future<bool> createCustomer(CustomerModel model) async {
    bool returnResponse = false;

    String authToken = base64.encode(
      utf8.encode(
          "${WoocommerceInfo.consumerKey} : ${WoocommerceInfo.consumerSecret}"),
    );

    try {
      var response = await Dio()
          .post(WoocommerceInfo.baseURL + WoocommerceInfo.customerURL,
              data: model.toJson(),
              options: Options(headers: {
                HttpHeaders.authorizationHeader: 'basic $authToken',
                HttpHeaders.connectionHeader: 'application/json',
              }));
      if (response.statusCode == 201) {
        returnResponse == true;
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 404) {
        returnResponse == false;
      } else {
        returnResponse == false;
      }
    }
    return returnResponse;
  }
}
