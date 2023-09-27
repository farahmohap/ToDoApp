import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/Add_Item_Button.dart';
import 'package:to_do_app/widgets/Items_List.dart';
import 'package:to_do_app/widgets/TitleAndSearchbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.values[3],
        elevation: 25,
        // shadowColor: Colors.purple,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.purple,
            ),
          )
        ],
        // forceMaterialTransparency: true,
        automaticallyImplyLeading: true,
        leading: Image.asset("assetss/images/to-doo.png"),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: GestureDetector(
          onTap: () {
            ItemList(itemscount: 2);
          },
          child: AddItemButton()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: TitleAndSearchBar(),
          ),
          ItemList()
        ]),
      ),
    );
  }
}
