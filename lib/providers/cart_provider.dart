import 'package:flutter/cupertino.dart';
import 'package:shopping_cart_app/models/product.dart';

class CartProvider extends ChangeNotifier{

  List<Product> cartItems =[];


  void addItem(Product product){
    if(!cartItems.contains(product)){
      cartItems.add(product);
      notifyListeners();
    }
  }

  void removeItem(Product product){
    cartItems.remove(product);
    notifyListeners();
  }


  void addQuantity(int idx){
    cartItems[idx].quantity=cartItems[idx].quantity+1;
    notifyListeners();
  }

  void removeQuantity(int idx){
      if(cartItems[idx].quantity>1){
        cartItems[idx].quantity=cartItems[idx].quantity-1;

      }
      notifyListeners();
  }
}