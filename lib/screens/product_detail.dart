import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/providers/cart_provider.dart';

class ProductDetail extends StatelessWidget {
  late final Product loadedproduct;
  ProductDetail(this.loadedproduct);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedproduct.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    child: Image.network(loadedproduct.imageURL, fit: BoxFit.fill,
                    ),
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 10,),
                  Text('\Rs${loadedproduct.cost}', style: TextStyle(color: Colors.blueGrey,fontSize: 20,
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: Text('${loadedproduct.details}',
                          textAlign: TextAlign.center,
                          softWrap: true)
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
                Provider.of<CartProvider>(context ,listen: false).addItem(loadedproduct);
            },
            child: Container(
              color: Colors.pink,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(
                child: Text("Add to Cart",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
