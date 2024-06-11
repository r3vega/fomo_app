import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:fomo/controllers/controllers.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  HomeController controller = HomeController();
  List<MiniEventCellWidget> futureMiniEventCells = [];
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    controller.fetchMiniEventWidgets().then((miniEventList) {
      setState(() {
        isLoaded = true;
        futureMiniEventCells = miniEventList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      selected: NavigationItem.chat,
      hasBackground: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Expanded(
          child: Column(
            children: [
              const Text(
                "Prueba",
                style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.white,
                ),
              ),
              isLoaded
                  ? HorizontalList(events: futureMiniEventCells)
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
