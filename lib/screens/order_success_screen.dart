import 'package:flutter/material.dart';

class OrderSuccessScreen  extends StatelessWidget{
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Order Success')),
      body: const Center(
        child: Text('Order Succession screen'),
      ),
    );
  }
}

