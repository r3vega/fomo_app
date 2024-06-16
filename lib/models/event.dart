import 'package:fomo/widgets/Events/mini_event_cell.dart';
import 'package:fomo/widgets/widgets.dart';

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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
    };
  }

  EventCellWidget eventToWidget() {
    return EventCellWidget(event: Event(name: name, description: description));
  }

  MiniEventCellWidget miniEventToWidget() {
    return MiniEventCellWidget(
        event: Event(name: name, description: description));
  }
}
