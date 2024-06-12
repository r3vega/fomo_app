import '../widgets.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  final List<EventCellWidget> events;

  const VerticalList({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            children: events,
          )),
    );
  }
}
