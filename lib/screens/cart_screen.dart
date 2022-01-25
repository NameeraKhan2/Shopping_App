import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/providers/cart_provider.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<Product> cartItems =[];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<CartProvider>(
          builder: (context, provider ,_) {
            return ListView.builder(
              itemCount: provider.cartItems.length,
                itemBuilder: (ctx,idx){
                return Container(
                 height: 100,
                 width: MediaQuery.of(context).size.width,
                  child: Row(
                   children: [
                    Container(
                      margin: EdgeInsets.all(15),
                     // alignment: Alignment.centerRight,
                      color: Colors.amberAccent,
                      child: Text(provider.cartItems[idx].name,
                        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                     SizedBox(width:5,),
                     Container(
                       height: 20,
                         width: 30,
                         color: Colors.grey,
                         child: Text(provider.cartItems[idx].quantity.toString(),
                             style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
                         ),
                     ),
                     Expanded(child: SizedBox()),
                    RaisedButton(
                        child: Text("+"),
                        onPressed:() {
                          Provider.of<CartProvider>(context,listen: false).addQuantity(idx);
                    }),
                    SizedBox(width: 10,),
                    RaisedButton(
                        child: Text("-"),
                        onPressed:() {
                          Provider.of<CartProvider>(context,listen: false).removeQuantity(idx);
                        }),
                   ],
                ),
              );
            });
          }
        ),
      ),
    );
  }
}
