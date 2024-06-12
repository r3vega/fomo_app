import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class MiniEventCellWidget extends StatelessWidget {
  final Event event;

  const MiniEventCellWidget({required this.event});

  factory MiniEventCellWidget.fromEvent(Event event) {
    return MiniEventCellWidget(event: event);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 5), // Añadir padding horizontal
      child: TextButton(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 150,
            height: 150,
            color: Theme.of(context).primaryColor, // Contenedor amarillo
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 85,
                  color: Colors.red,
                  child: const Center(
                    child: Text("Image"),
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  event.name,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        onPressed: () => toScreen("/CHATDETAIL", arguments: {
          "event": event,
        }),
      ),
    );
  }
}
