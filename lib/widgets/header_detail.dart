import 'package:fomo/models/event.dart';
import 'package:flutter/material.dart';

class HeaderDetail extends StatelessWidget {
  final Event event;

  const HeaderDetail({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    maxRadius: 100,
                  ),
                ),
              ),
              Text(
                event.name,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const Text(
                "23 miembros",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Expanded(
                child: Container(
                  width: double
                      .infinity, // Ensure the container takes the full width
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      event.description,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
