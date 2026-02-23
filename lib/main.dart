import 'package:flutter/material.dart';
import 'screens/delivery_status_screen.dart';
import 'screens/basket_screen.dart';
import 'screens/order_success_screen.dart';
import 'screens/product_detail_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Food Delivery UI",
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/product',
      routes: {
        '/': (context) => const DeliveryStatusScreen(),
        '/basket' : (context) => const BasketScreen(),
        '/success': (context) => const OrderSuccessScreen(),
        '/product' : (context) => const ProductDetailScreen(),
      },
    );
  }
}