import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

ProductProvider? productProviderF;
ProductProvider? productProviderT;

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    productProviderF = Provider.of<ProductProvider>(context, listen: false);
    productProviderT = Provider.of<ProductProvider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cupertino Store",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(

                    itemBuilder: (context, index) =>
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("${productProviderT!.images[index]}", fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: Colors.grey.shade300),
                                      )),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${productProviderT!.name[index]}"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("${productProviderT!.price[index]}"),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    itemCount: productProviderF!.images.length,
                    shrinkWrap: true),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
