import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Background(
      selected: NavigationItem.home,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: EventCellWidget(
              name: "Aleronb",
              description: "Fiesta de techno",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: EventCellWidget(
              name: "Aleronb",
              description: "Fiesta de techno",
            ),
          ),
        ],
      ),
    );
  }
}
