import 'dart:convert';

import 'package:http/http.dart' as http;

class CatFactsModel {
  String fact;
  int length;

  CatFactsModel(this.fact, this.length);
}

class CatFactsAPI {
  final _baseURL = "https://catfact.ninja";

  Future<CatFactsModel> getCatFact() async {
    final response = await http.get(Uri.parse('$_baseURL/fact'));

    if (response.statusCode != 200) {
      throw Exception("Failed to load cat fact");
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;

    return CatFactsModel(data["fact"], data["length"]);
  }
}