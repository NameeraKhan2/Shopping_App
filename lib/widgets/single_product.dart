import 'package:flutter/material.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/screens/product_detail.dart';
//import 'package:provider/provider.dart';
//import '../widgets/cart.dart';

class SingleProduct extends StatelessWidget {
  static const routeName ='/single_product';
  final Product product;
  SingleProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(product.name,style: TextStyle(fontSize: 22),),
          ClipRRect(
             borderRadius: BorderRadius.circular(15),
                child: GestureDetector(
                  onTap: (){
                   //Navigator.of(context).pushNamed(SingleProduct.routeName);
                    Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => ProductDetail(product),
                     ),
                    );
                  },
                  child: Image.network(
                    product.imageURL,
                    fit: BoxFit.fill,
                    width: 200,
                    height: 200,
                         ),
                ),

                ),
      ],
    );
  }
}
