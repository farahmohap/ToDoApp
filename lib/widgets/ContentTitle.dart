import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  ContentTitle({super.key, this.title = "Title"});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.edit,
            size: 30,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

/*TextField(
        // onChanged: (value){
        //   //trigger continuasly
        //   //used for search as example
        // },
        onSubmitted: (value) {
          //6-trigger cubit
        },
        decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            // enabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 16, vertical: 20), //to control width&height
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: "Title",
            hintStyle: TextStyle(fontSize: 40)));
  } */
