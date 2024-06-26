import 'dart:convert';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/widgets/event_cell.dart';
import 'package:fomo/widgets/mini_event_Cell.dart';
import 'package:http/http.dart';
import 'package:fomo/models/models.dart';

ResponseController _respC = ResponseController.to;
AppController _appC = AppController.to;

class HomeController {
  final Client httpClient = Client();

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

  Future<List<EventCellWidget>> fetchEventWidgets() async {
    List<Event> events = await fetchEvents();
    return events.map((item) => item.eventToWidget()).toList();
  }

  Future<List<MiniEventCellWidget>> fetchMiniEventWidgets() async {
    List<Event> events = await fetchEvents();
    return events.map((item) => item.miniEventToWidget()).toList();
  }
}
