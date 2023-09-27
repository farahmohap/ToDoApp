import 'package:flutter/material.dart';

class ContentTitle extends StatefulWidget {
  ContentTitle({
    super.key,
  });

  @override
  State<ContentTitle> createState() => _ContentTitleState();
}

class _ContentTitleState extends State<ContentTitle> {
  String title = "Title";

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Dialog(
                        insetAnimationCurve: Curves.easeInOutBack,
                        insetAnimationDuration: Duration(seconds: 2),
                        //clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  ("New Title"),
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: TextField(controller: controller),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      title = controller.text;
                                      controller.text = "";
                                    });

                                    Navigator.pop(context);
                                  },
                                  child: Text("Apply"),
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.purple),
                                )
                              ]),
                        ),
                      ),
                    );
                  });
            },
            child: const Icon(
              Icons.edit,
              size: 30,
              color: Colors.grey,
            ),
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
