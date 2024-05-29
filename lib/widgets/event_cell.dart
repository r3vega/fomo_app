import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class EventCellWidget extends StatelessWidget {
  final String name;
  final String description;

  const EventCellWidget({required this.name, required this.description});

  factory EventCellWidget.fromEvent(Event event) {
    return EventCellWidget(name: event.name, description: event.description);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        child: Container(
          color: Theme.of(context).primaryColor, // Contenedor amarillo
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Alinea los textos a la izquierda
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Espacio entre los textos
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        onPressed: () => toScreen("/CHAT"),
      ),
    );
  }
}
