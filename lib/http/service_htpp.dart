import 'dart:convert';

import 'package:gatos_app/model/cat_model.dart';
import 'package:http/http.dart' as http;

class ServiceHtpp {
  Future<List<Cat>> get_cat() async {
    var url = Uri.https('api.thecatapi.com', 'v1/breeds');
    var response = await http.get(url);

    final data = cats(response.body);
    return data;
  }
}
