import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
        child: TextField(
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
                hintStyle: TextStyle(fontSize: 40))));
  }
}

//WeatherModel? weatherModel;//Globaaaaal Variable
