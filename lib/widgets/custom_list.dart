import 'widgets.dart';
import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';

class CustomListView extends StatelessWidget {
  final List<EventCellWidget>? eventCells;

  CustomListView({this.eventCells});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: eventCells?.length ?? 0,
      itemBuilder: (context, index) {
        return eventCells![index];
      },
    );
  }
}