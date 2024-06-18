import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';
import 'package:fomo/widgets/Users/user_list_cell.dart';
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
    final bool isPresentation = args["isPresentation"];

    return Background(
      child: Container(
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.calendar_month),
                            Text(event.date ?? "No hay fecha")
                        ],),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_pin),
                            Text(event.location ?? "No hay lugar")
                        ],),
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
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person),
                            Text("23 miembros ")
                        ],),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              isPresentation
              ? ElevatedButton(
                  onPressed: () {
                    toScreen("/CHATDETAIL", arguments: {
                      "event": event,
                    });
                  },
                  child: const Text("Unirse al grupo"),
                )
              : const Column(
                  children: [
                    UserListCell(),
                    UserListCell(),
                    UserListCell(),
                  ],
                ),
            ],
          )),
    );
  }
}
