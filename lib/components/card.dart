import 'package:flutter/material.dart';

class Collect extends StatefulWidget {
  const Collect({Key? key}) : super(key: key);

  @override
  _CollectState createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Collection",
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade500),
                      ),
                      const Text(
                        "Autumn 2021",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: _buildIndicator(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                children: <Widget>[
                  Image.network(
                    'https://images.unsplash.com/photo-1525457136159-8878648a7ad0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHdpbnRlciUyMGNsb3RoaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1549902529-a515e31f0c1c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHdpbnRlciUyMGNsb3RoaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1611080922224-2e0c006a4943?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/flagged/photo-1574876668890-2ff765c77cda?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU3fHx3aW50ZXIlMjBjbG90aGluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1575919988855-f727358015b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHdpbnRlciUyMGNsb3RoaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ]),
    );
  }

  _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey.shade500,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
