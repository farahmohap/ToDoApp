import 'package:flutter/material.dart';
import 'package:to_do_app/views/Item_Content_View.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ItemContentView();
        }));
      },
      child: Container(
        width: 400,
        height: 180,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(16)),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  "Title",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("18/9/2023 3:55 AM"),
                trailing: Icon(
                  Icons.push_pin,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 280.0),
                child: Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 176, 19, 8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
