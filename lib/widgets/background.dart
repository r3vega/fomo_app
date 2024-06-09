import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';

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
    return Expanded(
    child: Scaffold(
      body: Stack(
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
          SingleChildScrollView(
            child: widget.child,
          ),
        ],
      ),
      //backgroundColor: widget.hasBackground? Theme.of(context).scaffoldBackgroundColor:null,
      bottomNavigationBar: widget.selected != null
          ? NavigationBarWidget(selected: widget.selected!)
          : null,
      //floatingActionButton: Visibility(child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add,size: 50,color: Colors.white,),),),
    )
    );
  }
}
