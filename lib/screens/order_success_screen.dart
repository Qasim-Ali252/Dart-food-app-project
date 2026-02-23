import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success image
            Image.asset(
              "lib/assets/images/success.png.png",
              fit:BoxFit.contain,
              // width: 200,
              // height: 200,
            ),

            SizedBox(height: 40),

            // Congratulations text
            Text(
              'Congratulations!!!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 20),

            // Description text
            Text(
              'Your order have been taken and',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            Text(
              'is being attended to',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 50),

            // Track order button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF79E1B), // Orange color
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Track order',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Continue shopping button
            OutlinedButton(
              onPressed: () {
                // Navigate to shopping screen
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                side: BorderSide(color: Color(0xFFF79E1B), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Continue shopping',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFF79E1B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
