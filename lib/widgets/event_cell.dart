import 'package:flutter/material.dart';

class EventCellWidget extends StatefulWidget {
  const EventCellWidget(
      {super.key, required this.name, required this.description});

  final String name;
  final String description;
  @override
  State<EventCellWidget> createState() => _EventCellState();
}

class _EventCellState extends State<EventCellWidget> {
  InputDecoration? decoration;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      width: 150.0,
      height: 150.0,
      child: Column(
        children: [
          Text(widget.name),
          Text(widget.description),
        ],
      ),
    );
  }
}
