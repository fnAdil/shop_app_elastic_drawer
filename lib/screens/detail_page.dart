import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_elastic_drawer/components/appbar.dart';
import 'package:shop_app_elastic_drawer/constants/constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomAppBar(
                func: () {
                  Navigator.pop(context);
                },
                iconRight: const Icon(Icons.shopping_bag_outlined),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                color: Colors.teal,
                child: Image.asset("assets/images/d.png"),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 40),
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Outlook",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Casual Sweater",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        const Text(
                          "\$99",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      Constants.aciklama,
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    const Text(
                      "Choose Size",
                      style: TextStyle(fontSize: 24, color: Colors.black87),
                    ),
                    ChooseSize(
                      onSizeSelected: (p0) {
                        print(p0);
                      },
                      selectedSize: "M",
                      sizes: ["XS", "S", "M", "L", "XL"],
                      size: size,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        color: Colors.teal,
      ),
    );
  }
}

class ChooseSize extends StatelessWidget {
  const ChooseSize({
    Key? key,
    required this.size,
    required this.sizes,
    required this.onSizeSelected,
    required this.selectedSize,
  }) : super(key: key);

  final Size size;
  final List<String> sizes;
  final String selectedSize;
  final void Function(String) onSizeSelected;

  @override
  Widget build(BuildContext context) {
    String str = selectedSize;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        sizes.length,
        (index) => GestureDetector(
          onTap: () {
            str = sizes[index];
            onSizeSelected(sizes[index]);
          },
          child: CircleAvatar(
            child: Text(
              sizes[index],
              style: const TextStyle(color: Colors.black),
            ),
            minRadius: size.height * 0.034,
            backgroundColor:
                str == sizes[index] ? Colors.teal : Colors.teal[50],
          ),
        ),
      ),
    );
  }
}
