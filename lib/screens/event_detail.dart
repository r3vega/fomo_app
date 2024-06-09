import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';

class EventDetail extends StatelessWidget {
  final String name = "Casa Pepa";
  final String description = "Es un fieston";

  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            color: Colors.red,
            child: const Center(
              child: Text("Image"),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
            Text(
              name,
              style: const TextStyle(
                    fontSize: 32.0,
                  ),
              ),
            const SizedBox(width: 35.0),
            const Text(
              "Numero participantes: 2",
              style: TextStyle(
                    fontSize: 12.0,
                  ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            description,
            style: const TextStyle(
                    fontSize: 32.0,
                  ),
            ),
        ],
      )
    );
  } 
}
