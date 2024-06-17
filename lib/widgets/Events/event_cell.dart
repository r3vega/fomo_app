import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class EventCellWidget extends StatelessWidget {
  //final String name;
  //final String description;
  final Event event;

  const EventCellWidget({super.key, required this.event});

  factory EventCellWidget.fromEvent(Event event) {
    return EventCellWidget(event: event);
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        event.name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (event.date != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.calendar_month),
                          const SizedBox(width: 5.0),
                          Text(event.date!),
                        ],
                      ),
                  ],
                ), 
                const SizedBox(height: 8.0), // Espacio entre los textos
                Row(
                  children: [
                    Expanded(
                    child: Text(
                      event.description,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    ),
                    const SizedBox(width: 20.0,),
                    if (event.location != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.location_pin),
                        const SizedBox(width: 5.0),
                        Text(event.location!)
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        onPressed: () => toScreen("/EVENTDETAIL", arguments: {
          "event": event,
          "isPresentation": true
        }),
      ),
    );
  }
}
