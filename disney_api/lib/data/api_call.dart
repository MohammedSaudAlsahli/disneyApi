import 'dart:convert';
import 'package:disney_api/data/disney_model.dart';
import 'package:http/http.dart' as http;

class DisneyChar {
  Future<Disney> disneyChar() async {
    final response =
        await http.get(Uri.parse('https://api.disneyapi.dev/character'));

    final responseAsjson = json.decode(response.body);
    final result = Disney.fromJson(responseAsjson);
    return result;
  }
}
