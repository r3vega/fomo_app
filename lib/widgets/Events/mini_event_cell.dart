import 'package:flutter/material.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/navigation.dart';

class MiniEventCellWidget extends StatelessWidget {
  final Event event;

  const MiniEventCellWidget({required this.event});

  factory MiniEventCellWidget.fromEvent(Event event) {
    return MiniEventCellWidget(event: event);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 5),
      child: TextButton(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 150,
            height: 150,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 95,
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                        "assets/images/apple_logo.png",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Expanded(child:
                 Center(child:
                  Text(
                    event.name,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  )
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
