import 'package:flutter/material.dart';
import 'package:fomo/view_models/view_models.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:fomo/models/models.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late EventViewModel eventViewModel;
  Future<List<EventCellWidget>>? futureEventCells;

  @override
  void initState() {
    super.initState();
    eventViewModel = EventViewModel(eventModel: EventModel(httpClient: http.Client()));
    futureEventCells = eventViewModel.fetchEventWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      selected: NavigationItem.home,
      child: FutureBuilder<List<EventCellWidget>>(
        future: futureEventCells,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomListView(eventCells: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // Por defecto, muestra un loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}