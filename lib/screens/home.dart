import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController controller = HomeController();
  List<EventCellWidget> futureEventCells = [];
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    controller.fetchEventWidgets().then((eventList) {
      setState(() {
        isLoaded = true;
        futureEventCells = eventList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      selected: NavigationItem.home,
      hasBackground: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            const Text(
              "Home",
              style: TextStyle(
                fontSize: 45.0,
                color: Colors.white,
              ),
            ),
            isLoaded
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: futureEventCells,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ],
        ),
      ),
    );
  }
}
