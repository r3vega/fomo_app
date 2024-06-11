import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:fomo/controllers/controllers.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<EventCellWidget> futureEventCells = [];
  HomeController controller = HomeController();
  bool isListVisible = false;

  @override
  void initState() {
    super.initState();
    controller.fetchEventWidgets().then((eventList) {
      setState(() {
        futureEventCells = eventList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        selected: NavigationItem.search,
        hasBackground: false,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What you looking for?',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isListVisible = true;
                          });
                        },
                        icon: const Icon(Icons.search))
                  ],
                ),
              ),
              if (isListVisible)
                Expanded(
                    child: VerticalList(
                  events: futureEventCells,
                ))
            ],
          ),
        ));
  }
}
