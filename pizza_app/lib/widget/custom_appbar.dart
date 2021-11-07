import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios, size: 18),
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.close, color: Colors.black, size: 22),
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }
}
