import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_app/widgets/Add_Item_Button.dart';
import 'package:to_do_app/widgets/ContentTitle.dart';
import 'package:to_do_app/widgets/TaskBottomSheet.dart';
import 'package:to_do_app/widgets/task_list.dart';

class ItemContentView extends StatelessWidget {
  const ItemContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 195, 238),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: TaskBottmSheet((newTaskTitle) {})));
              });
        },
        child: AddItemButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.lock,
            size: 30,
            color: Colors.purple,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
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
      // bottomNavigationBar:  Lottie.asset('assetss/animations/aa.json'),
      body: Stack(fit: StackFit.expand, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ContentTitle(),
            // Divider(
            //   thickness: 3,
            //   color: Colors.purple,
            //   indent: 20,
            //   endIndent: 285,
            // ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                margin: const EdgeInsets.all(15),
                child: TasksList(),
              ),
            ),
          ],
        ),
        // Lottie.asset('assetss/animations/aa.json')
        //   }
        // RunAnimation() {

        //   if (Task() == true) {
        //     return Lottie.asset('assetss/animations/aa.json');
        //   }
        //   return null;
        // }
      ]),
    );
  }
}
