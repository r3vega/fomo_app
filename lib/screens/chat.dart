import 'package:flutter/material.dart';
import 'package:fomo/widgets/custom_list.dart';
import 'package:fomo/widgets/widgets.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<EventCellWidget> evento = [
    EventCellWidget(
      name: "Aleron",
      description: "fiesta",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      selected: NavigationItem.chat,
      child: SingleChildScrollView(
        child: Column(
          children: evento,
        ),
      ),
    );
  }
}
