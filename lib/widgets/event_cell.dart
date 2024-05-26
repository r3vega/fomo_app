import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';

class EventCellWidget extends StatelessWidget {
  final String name;
  final String description;

  EventCellWidget({required this.name, required this.description});

  factory EventCellWidget.fromEvent(Event event) {
    return EventCellWidget(
      name: event.name,
      description: event.description
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
