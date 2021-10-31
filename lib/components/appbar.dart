import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.func, required this.iconRight})
      : super(key: key);
  final void Function() func;
  final Icon iconRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: func,
          ),
          IconButton(
              icon: iconRight,
              onPressed: () {
                print("shop");
              }),
        ],
      ),
    );
  }
}
