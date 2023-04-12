import 'package:cupertinoapp/screen/provider/cart_provider.dart';
import 'package:cupertinoapp/screen/provider/product_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  ProductProvider? productProvider;
  CartProvider? cartProviderT;
  CartProvider? cartProviderF;

  @override
  Widget build(BuildContext context) {
    cartProviderF = Provider.of<CartProvider>(context, listen: false);
    cartProviderT = Provider.of<CartProvider>(context, listen: true);
    ProductProvider productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shoping Cart",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                prefix: Icon(Icons.person_outline, color: Colors.black26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                prefix: Icon(Icons.email_outlined, color: Colors.black26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                prefix: Icon(Icons.location_on_outlined, color: Colors.black26),
              ),
            ),
            Container(
              child: CupertinoTextField.borderless(
                prefix: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Icon(
                    CupertinoIcons.time,
                    color: Colors.black45,
                  ),
                ),
                placeholder: "Delivery Time",
                suffix: Text(
                    " ${cartProviderT!.dateTime.day}-${cartProviderT!.dateTime.month}-${cartProviderT!.dateTime.year} ${cartProviderT!.dateTime.hour}:${cartProviderT!.dateTime.minute} "),
              ),
            ),
            SizedBox(
              height: 100,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  cartProviderF!.changedate(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
