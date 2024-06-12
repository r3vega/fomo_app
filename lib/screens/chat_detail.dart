import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';
import 'package:fomo/widgets/widgets.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener los argumentos pasados
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Acceder a los datos de los argumentos
    final Event event = args["event"];

    return Background(child: Column(
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
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type here',
                        border: const OutlineInputBorder(),
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const IconButton(
                  icon: Icon(Icons.send, color: Colors.white,),
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
