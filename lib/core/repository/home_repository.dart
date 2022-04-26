import 'dart:convert';
import 'dart:developer';

import 'package:artivatic_test/core/constants/urls.dart';
import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  final String _endPoint = "c4ab4c1c-9a55-4174-9ed2-cbbe0738eedf";

  Future<DataModel> getHomeData() async {
    try {
      var response = await http.get(
        Uri.parse(Urls.baseUrl + _endPoint),
        headers: {'Content-Type': 'application/json'},
      );

      log("statusCode : ${response.statusCode}");
      log("response : ${json.decode(response.body)}");

      // status code = 200 for success
      // if (response.statusCode == 200) {
      // } else {
      //   return Future.error(error);
      // }
      return dataModelFromJson(response.body);
    } catch (e) {
      log("error message $e");
      return Future.error(e);
    }
  }
}
