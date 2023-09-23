import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/Item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Item(),
        );
      }),
    );
  }
}
