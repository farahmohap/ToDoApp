import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/Add_Item_Button.dart';
import 'package:to_do_app/widgets/ContentTitle.dart';

class ItemContentView extends StatelessWidget {
  const ItemContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddItemButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.lock,
            size: 30,
            color: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.info,
              size: 30,
              color: Colors.purple,
            ),
          ),
        ],
        toolbarHeight: 50,
        forceMaterialTransparency: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 195, 238),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ContentTitle(),
            const Divider(
              thickness: 2,
              color: Colors.purple,
              indent: 20,
              endIndent: 20,
            ),
            for (int i = 1; i < 11; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete),
                 
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
