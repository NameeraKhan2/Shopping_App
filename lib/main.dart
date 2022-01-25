import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/providers/cart_provider.dart';
//import 'package:shopping_cart_app/models/product.dart';
import 'package:shopping_cart_app/screens/productoverviewscreen.dart';
import 'package:shopping_cart_app/widgets/single_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx){
          return CartProvider();
        })
      ],
      child: MaterialApp(
        title: 'Shopping',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.blueGrey,
          textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20,51, 51,1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20,51, 51,1),
            ),
            subtitle1: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home:  ProductOverviewScreen(),
      ),
    );

  }
}


