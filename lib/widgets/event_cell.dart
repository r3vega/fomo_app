import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class EventCellWidget extends StatelessWidget {
  final String name;
  final String description;

  const EventCellWidget({super.key, required this.name, required this.description});

  factory EventCellWidget.fromEvent(Event event) {
    return EventCellWidget(name: event.name, description: event.description);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextButton(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 250,
            color: Theme.of(context).primaryColor, // Contenedor amarillo
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // Alinea los textos a la izquierda
              children: [
                Container(
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text("Image"),
                  ),
                ),
                const SizedBox(height: 8.0),
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
        ),
        onPressed: () => toScreen("/EVENTDETAIL"),
      ),
    );
  }
}
