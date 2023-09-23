import 'package:flutter/material.dart';

class AddItemButton extends StatelessWidget {
  const AddItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        maxRadius: 30,
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ));
  }
}