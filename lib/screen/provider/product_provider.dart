import 'package:cupertinoapp/screen/view/cart.dart';
import 'package:cupertinoapp/screen/view/products.dart';
import 'package:flutter/cupertino.dart';




class ProductProvider extends ChangeNotifier
{

  List images = [
    "assets/images/.1.jpg",
    "assets/images/.2.jpg",
    "assets/images/.3.jpg",
    "assets/images/.5.jpg",
    "assets/images/.6.jpg",
    "assets/images/.7.jpg",
  ];
List name = [
  "Vagabond sack",
  "Stella sunglasses",
  "Whitney belt",
  "Strut earrings",
  "Varsity socks",
  "Weave keyring",
];
  List? view = [
    ProductView(),
    CartView(),
  ];
  List price = [
    "\$100",
    "\$150",
    "\$200",
    "\$250",
    "\$300",
    "\$350",
  ];


  Duration time = Duration();






}