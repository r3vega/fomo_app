import 'dart:convert';
import 'package:http/http.dart' as http;

class Event {
  final String name;
  final String description;

  Event({required this.name, required this.description});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['name'],
      description: json['description'],
    );
  }
}

class EventModel {
  final http.Client httpClient;

  EventModel({required this.httpClient});

  Future<List<Event>> fetchEvents() async {
    final response = await this.httpClient.get(Uri.parse(
        'https://3auaweds53.execute-api.eu-west-1.amazonaws.com/DEV/events'));
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      return json.map((item) => Event.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load Events');
    }
  }
}
