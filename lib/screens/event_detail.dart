import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/widgets/user_list_cell.dart';
import 'package:fomo/widgets/widgets.dart';

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
        backgroundColor: Colors.green,
        /*title: Text(
          event.name,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),*/
      ),
      body: Container(
          color: Colors.blue,
          child: Column(
            children: [
              HeaderDetail(
                event: event,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('Container 1')),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('Container 2')),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('Container 3')),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              UserListCell(),
              UserListCell(),
              UserListCell(),
            ],
          )),
    );
  }
}
