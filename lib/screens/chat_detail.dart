import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener los argumentos pasados
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Acceder a los datos de los argumentos
    final Event event = args["event"];

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                event.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            onPressed: () => toScreen("/EVENTDETAIL", arguments: {
              "event": event,
            }),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Aquí va el chat del grupo",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
