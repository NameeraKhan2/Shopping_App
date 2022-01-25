import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './product.dart';


Map<String,List> categories = {
  'Premium':[
    Product(id: 1, name: 'Apple', cost: 30, availability: 1, details: 'Imported from Swiss', category: 'Premium',
        imageURL: 'https://image.shutterstock.com/image-photo/ripe-red-apple-fruit-half-260nw-699645961.jpg'),
    Product(id: 4, name: 'Orange', cost: 25, availability: 1, details: 'From Nagpur', category: 'Premium',
        imageURL: 'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg'),
  ],
  'Tamil Nadu' :[
    Product(id: 2, name: 'Mango', cost: 50, availability: 1, details: 'Farmed at Selam', category: 'Tamil Nadu',
        imageURL: 'https://image.shutterstock.com/image-photo/mango-leaf-isolated-white-background-260nw-1157303833.jpg'),

    Product(id: 3, name: 'Banana', cost: 5, availability: 0, details: 'From South', category: 'Tamil Nadu',
        imageURL: 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg'),
  ]
};
//
List<Product> items =[
    Product(id: 1, name: 'Apple', cost: 30, availability: 1, details: 'Imported from Swiss', category: 'Premium',
        imageURL: 'https://image.shutterstock.com/image-photo/ripe-red-apple-fruit-half-260nw-699645961.jpg'),

    Product(id: 2, name: 'Mango', cost: 50, availability: 1, details: 'Farmed at Selam', category: 'Tamil Nadu',
      imageURL: 'https://image.shutterstock.com/image-photo/mango-leaf-isolated-white-background-260nw-1157303833.jpg'),

    Product(id: 3, name: 'Banana', cost: 5, availability: 0, details: 'From South', category: 'Tamil Nadu',
        imageURL: 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg'),

    Product(id: 4, name: 'Orange', cost: 25, availability: 1, details: 'From Nagpur', category: 'Premium',
        imageURL: 'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg'),
  ];
