import 'package:flutter/material.dart';
import 'package:fomo/utils/navigation.dart';
import 'package:fomo/widgets/widgets.dart';
import 'package:get/get.dart';

class Background extends StatefulWidget {
  const Background({
    super.key,
    required this.child,
    this.hasBackground = true,
    this.selected,
    this.hasAddButton = false,
  });

  final Widget child;
  final bool hasBackground;
  final NavigationItem? selected;
  final bool hasAddButton;

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              image: widget.hasBackground
                  ? const DecorationImage(
                      image: AssetImage(
                        'assets/images/background.png',
                      ),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
          widget.child,
        ],
      ),),
      floatingActionButton: widget.hasAddButton ? IconButton(icon: const Icon(Icons.send), onPressed: () { toScreen("/SETTINGS");},) : null,
      bottomNavigationBar: widget.selected != null
          ? NavigationBarWidget(selected: widget.selected!)
          : null,
    );
  }
}
