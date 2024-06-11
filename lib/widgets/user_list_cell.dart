import 'package:fomo/models/event.dart';
import 'package:flutter/material.dart';

class UserListCell extends StatelessWidget {
  const UserListCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.yellow,
              maxRadius: 20,
            ),
            SizedBox(
              width: 20,
            ),
            Text("Usuario"),
          ],
        ),
      ),
    );
  }
}
