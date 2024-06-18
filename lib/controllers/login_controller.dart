import 'dart:convert';
import 'package:http/http.dart';
import 'package:fomo/models/models.dart';

class LoginController {
  final Client httpClient = Client();

  Future<Map<String, dynamic>> login(User user) async {
    const String url = "https://akd6gl7w71.execute-api.eu-west-1.amazonaws.com/DEV/login";

    try {
      final response = await httpClient.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(user.toJson())
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        return {
          'success': true,
          'data': responseBody,
        };
      } else {
        final responseBody = jsonDecode(response.body);
        return {
          'success': false,
          'error': responseBody['error'] ?? 'Unknown error',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'error': 'An error occurred: $e',
      };
    }
  }
}
