import 'package:fomo/widgets/Events/mini_event_cell.dart';

import '../widgets.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List<MiniEventCellWidget> events;

  const HorizontalList({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nombre del rail",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: events,
            ),
          ),
        ],
      ),
    );
  }
}
