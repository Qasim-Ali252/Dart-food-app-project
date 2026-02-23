import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF79E1B), // Orange background
      body: SafeArea(
        child: Column(
          children: [
            // Top orange section with Go back button and title
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  // Go back button
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_back_ios, size: 16),
                          Text('Go back'),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  // Title
                  Text(
                    'My Basket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // White content section
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // List of items
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(20),
                        children: [
                          // Item 1
                          buildBasketItem(
                            name: 'Quinoa fruit salad',
                            packs: '2packs',
                            price: '₦ 20,000',
                            backgroundColor: Color(0xFFFFFAEB),
                            imagePath: "lib/assets/images/firstfruit.png",
                          ),

                          SizedBox(height: 20),

                          // Item 2
                          buildBasketItem(
                            name: 'Melon fruit salad',
                            packs: '2packs',
                            price: '₦ 20,000',
                            backgroundColor: Color(0xFFF1EFF6),
                            imagePath: "lib/assets/images/secondfruit.png",
                          ),

                          SizedBox(height: 20),

                          // Item 3
                          buildBasketItem(
                            name: 'Tropical fruit salad',
                            packs: '2packs',
                            price: '₦ 20,000',
                            backgroundColor: Color(0xFFFFE5E5),
                            imagePath: "lib/assets/images/thirdfruit.png",
                          ),
                        ],
                      ),
                    ),

                    // Bottom section with total and checkout button
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, -3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Total section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '₦ 60,000',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          // Checkout button
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/success');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF79E1B),
                              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Simple function to build each basket item
  Widget buildBasketItem({
    required String name,
    required String packs,
    required String price,
    required Color backgroundColor,
    required String imagePath,
  }) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Image container with colored background and circular image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 15),

          // Item name and packs
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  packs,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),

          // Price
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
