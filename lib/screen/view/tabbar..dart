
import 'package:cupertinoapp/screen/view/cart.dart';
import 'package:cupertinoapp/screen/view/products.dart';
import 'package:cupertinoapp/screen/view/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  List screen = [ProductView(),SearchView(),CartView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        controller: CupertinoTabController(
          initialIndex: 0,
        ),
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            return screen[index];
          },
        ),
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
          ],
        ),
      ),
    );
  }
}