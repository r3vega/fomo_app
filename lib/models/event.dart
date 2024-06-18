import 'package:fomo/widgets/Events/mini_event_cell.dart';
import 'package:fomo/widgets/widgets.dart';

class Event {
  final String name;
  final String description;
  String? date;
  String? location;
  final String? id;

  Event(
      {required this.name,
      required this.description,
      this.date,
      this.location,
      this.id});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        name: json['name'],
        description: json['description'],
        date: json['date'],
        location: json['location'],
        id: json["ID"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'date': date,
      'location': location,
      'id': id
    };
  }

  EventCellWidget eventToWidget() {
    return EventCellWidget(
        event: Event(
            name: name,
            description: description,
            date: date,
            location: location,
            id: id));
  }

  MiniEventCellWidget miniEventToWidget() {
    return MiniEventCellWidget(
        event: Event(
            name: name,
            description: description,
            date: date,
            location: location,
            id: id));
  }
}
