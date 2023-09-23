import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class TitleAndSearchBar extends StatelessWidget {
  const TitleAndSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            "Projects",
            style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 33),
          ),
        ),
        Expanded(
          flex: 2,
          child: AnimSearchBar(
            searchIconColor: Colors.purple,
            textFieldIconColor: Colors.purple,
            closeSearchOnSuffixTap: true,
            rtl: true,
            helpText: "Search...",
            width: 300,
            textController: TextEditingController(),
            onSubmitted: (value) {},
            onSuffixTap: () {},
          ),
        )
      ],
    );
  }
}
