import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener los argumentos pasados
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Acceder a los datos de los argumentos
    final Event event = args["event"];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          event.name,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align items to the start of the column
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      event.name,
                      style: const TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
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
                  event.description,
                  style: const TextStyle(
                    fontSize:
                        16.0, // Adjusted the font size to be smaller than the title
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
