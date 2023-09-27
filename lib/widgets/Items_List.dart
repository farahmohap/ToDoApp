import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/Item.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key,  this.itemscount});
final int? itemscount;
  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate( (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Item(),
        );
      }),
    );
  }
}
