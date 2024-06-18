import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:fomo/utils/utils.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String? name;
  String? descp;
  String? date;
  String? location;
  CreateEventController controller = CreateEventController();

  void createEvent() {
    if (name != null && descp != null && date != null && location != null) {
      controller.createEvent(Event(
        name: name!,
        description: descp!,
        date: date,
        location: location,
      ));
    } else {
      ErrorToast.showErrorToast("Please fill all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        hasBackground: false,
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    color: Colors.yellow,
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Create an event",
                        style: TextStyle(fontSize: 24),
                      ),
                    )),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFieldWidget(
                    hintText: "Write a name",
                    onChanged: (String str) {
                      name = str;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFieldWidget(
                    hintText: "Write a description",
                    onChanged: (String str) {
                      descp = str;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFieldWidget(
                    hintText: "Write a date",
                    onChanged: (String str) {
                      date = str;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFieldWidget(
                    hintText: "Write a location",
                    onChanged: (String str) {
                      location = str;
                    },
                  )),
              IconButton(
                  onPressed: () {
                    createEvent();
                  },
                  icon: const Icon(Icons.send)),
            ],
          ),
        ));
  }
}
