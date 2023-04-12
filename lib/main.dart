
import 'package:cupertinoapp/screen/provider/cart_provider.dart';
import 'package:cupertinoapp/screen/provider/product_provider.dart';
import 'package:cupertinoapp/screen/view/search.dart';
import 'package:cupertinoapp/screen/view/tabbar..dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider(),),
        ChangeNotifierProvider(create: (context) => CartProvider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (p0) => Tabbar(),
        },
      ),
    ),
  );
}