import 'package:flutter/material.dart';

class ProductDetailScreen  extends StatelessWidget{
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: const Center(
        child: Text('product dettails screen'),
      ),
    );
  }
}

