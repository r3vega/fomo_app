import 'package:fomo/widgets/Events/mini_event_cell.dart';
import 'package:fomo/widgets/widgets.dart';

class Event {
  final String name;
  final String description;
  String? date;
  String? location;

  Event(
      {required this.name,
      required this.description,
      this.date,
      this.location});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        name: json['name'],
        description: json['description'],
        date: json['date'],
        location: json['location']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'date': date,
      'location': location
    };
  }

  EventCellWidget eventToWidget() {
    return EventCellWidget(
        event: Event(
            name: name,
            description: description,
            date: date,
            location: location));
  }

  MiniEventCellWidget miniEventToWidget() {
    return MiniEventCellWidget(
        event: Event(
            name: name,
            description: description,
            date: date,
            location: location));
  }
}
