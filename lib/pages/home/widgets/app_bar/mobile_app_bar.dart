import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text("Flutter"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
