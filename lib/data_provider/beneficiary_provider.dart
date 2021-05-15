import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:book_my_shot/util/strings.dart';

import 'network_exceptions.dart';

class BeneficiaryProvider {
  Future<List> getBeneficiaries() async {
    var responseJson;
    try {
      var uri = Uri.https(
        coWinApiEndPoint,
        '/v2/appointment/beneficiaries',
      );
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer ' + accessToken,
        },
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson['beneficiaries'];
  }

  Future<String> postBeneficiary(String beneficiary) async {
    var responseJson;
    try {
      var uri = Uri.https(
        coWinApiEndPoint,
        '/v2/registration/beneficiary/new',
      );
      final response = await http.post(
        uri,
        body: beneficiary,
        headers: {
          'Authorization': 'Bearer ' + accessToken,
        },
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson['beneficiary_reference_id'];
  }

  Future<void> deleteBeneficiary(String beneficiaryId) async {
    var responseJson;
    try {
      var uri = Uri.https(
        coWinApiEndPoint,
        '/v2/registration/beneficiary/new',
      );
      final response = await http.post(
        uri,
        body: {"beneficiary_reference_id": beneficiaryId},
        headers: {
          'Authorization': 'Bearer ' + accessToken,
        },
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson['beneficiary_reference_id'];
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body);
        print(responseJson.runtimeType);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}',
        );
    }
  }
}
