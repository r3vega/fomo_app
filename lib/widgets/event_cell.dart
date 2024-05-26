import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';

class EventCellWidget extends StatelessWidget {
  final String name;
  final String description;

  const EventCellWidget({required this.name, required this.description});

  factory EventCellWidget.fromEvent(Event event) {
    return EventCellWidget(name: event.name, description: event.description);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 116, 108, 43), // Contenedor amarillo
      padding: const EdgeInsets.all(
          16.0), // Padding opcional para mejorar la presentación
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alinea los textos a la izquierda
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
    );
  }
}
