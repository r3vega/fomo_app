import 'package:fomo/models/models.dart';
import 'package:fomo/widgets/widgets.dart';

class EventViewModel {
  final EventModel eventModel;
  
  EventViewModel({required this.eventModel});
  
  Future<List<EventCellWidget>> fetchEventWidgets() async {
    final events = await eventModel.fetchEvents();
    return events.map((event) => EventCellWidget.fromEvent(event)).toList();
  }
}