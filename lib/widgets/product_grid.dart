import 'package:flutter/material.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/models/products.dart';
import 'package:shopping_cart_app/widgets/single_product.dart';
//import '../widgets/cart.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> products;
  ProductGrid({required this.products});
  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
            padding: EdgeInsets.all(10.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 7/9,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            ),
            itemBuilder: (ctx, i) => Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: SingleProduct(widget.products[i])),
            itemCount: widget.products.length,
        ),
      );
  }
}


