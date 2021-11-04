import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
      required this.funcRight,
      required this.funcLeft,
      required this.iconRight})
      : super(key: key);
  final void Function() funcRight;
  final void Function() funcLeft;
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
            onPressed: funcLeft,
          ),
          IconButton(icon: iconRight, onPressed: funcRight),
        ],
      ),
    );
  }
}
