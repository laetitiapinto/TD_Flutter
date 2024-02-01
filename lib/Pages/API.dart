import 'dart:convert';
import 'package:http/http.dart' as http;

class Utilisateur {
  static String baseUrl = "https://jsonplaceholder.typicode.com";

  static Future<List> getAllUser() async {
    try {
      var response = await http.get(Uri.parse("$baseUrl/posts"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("erreur serveur");
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
