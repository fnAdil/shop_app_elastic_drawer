import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.func}) : super(key: key);
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: func,
        ),
        IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              print("shop");
            }),
      ],
    );
  }
}
