import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class MiniEventCellWidget extends StatelessWidget {
  final String name;
  final String description;

  const MiniEventCellWidget({required this.name, required this.description});

  factory MiniEventCellWidget.fromEvent(Event event) {
    return MiniEventCellWidget(
        name: event.name, description: event.description);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
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
                  name,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
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
