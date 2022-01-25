import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/models/products.dart';
//import 'package:shopping_cart_app/widgets/cart.dart';
import 'package:shopping_cart_app/widgets/product_grid.dart';

import 'cart_screen.dart';

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  String _selCat = '';
  List<Product> _products = [];

  getData(){
    _products.clear();
    items.forEach((element) {
      if(_selCat.isEmpty) {
        _products.add(element);
      }else{
        if(element.category == _selCat)
          _products.add(element);
      }
    });
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
        actions: [
          PopupMenuButton(
            onSelected: (String selectedValue){
              setState(() {
                  _selCat = selectedValue;
                  getData();
              }
              );
            },
            icon: Icon(Icons.more_vert),
            //child: GestureDetector(
              //onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen())
                //);
              //},
              //child: Icon(Icons.shopping_cart),
            //),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("All"),
                value: "",
              ),
              PopupMenuItem(
                child: Text("Premium"),
                value: 'Premium'
              ),
              PopupMenuItem(
                child: Text("Tamil Nadu"),
                value: "Tamil Nadu",
              ),
            ],
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
              },
            ),
        ],
      ),
      body: ProductGrid(products:_products),
    );
  }
}
