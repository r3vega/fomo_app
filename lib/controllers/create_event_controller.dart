import 'dart:convert';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/widgets/Events/mini_event_cell.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:http/http.dart';
import 'package:fomo/models/models.dart';

class CreateEventController {
  final Client httpClient = Client();

  Future<Map<String, dynamic>> createEvent(Event event) async {
    const String url =
        'https://3auaweds53.execute-api.eu-west-1.amazonaws.com/DEV/events'; // URL de la API

    try {
      final response = await httpClient.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(event.toJson()),
      );

      if (response.statusCode == 201) {
        return {
          'success': true,
          'message': 'Event created successfully',
          'data': jsonDecode(response.body),
        };
      } else {
        return {
          'success': false,
          'message': 'Failed to create event: ${response.body}',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Error occurred: $e',
      };
    }
  }
}
