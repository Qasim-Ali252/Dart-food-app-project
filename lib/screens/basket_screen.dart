import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' My Basket')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Basket Screen'),
          SizedBox(height: 50),

          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/success');
          },
          child: Text('go to the success screen'),
          ),
        ],
      ),
    );
  }
}
