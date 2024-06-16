import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/widgets/widgets.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String? name;
  String? descp;
  CreateEventController controller = CreateEventController();
  @override
  Widget build(BuildContext context) {
    return Background(
        hasBackground: false,
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              const Text("Create an event"),
              const SizedBox(height: 15),
              TextFieldWidget(
                initValue: "Write a name",
                onChanged: (String str) {
                  name = str;
                },
              ),
              const SizedBox(height: 15),
              TextFieldWidget(
                initValue: "Write a description",
                onChanged: (String str) {
                  descp = str;
                },
              ),
              const SizedBox(height: 15),
              IconButton(
                  onPressed: () {
                    controller.createEvent(
                        Event(name: name ?? "", description: descp ?? ""));
                  },
                  icon: const Icon(Icons.send)),
            ],
          ),
        ));
  }
}
