import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1; // Track quantity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF79E1B), // Orange background
      body: SafeArea(
        child: Column(
          children: [
            // Top section with back button and image
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Back button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
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
                  ),

                  SizedBox(height: 30),

                  // Product image (circular)
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                         child: Image.asset(
                             "lib/assets/images/homescreen.png",
                            fit: BoxFit.cover,
                         ),



                    ),
                  ),
                ],
              ),
            ),

            // Bottom white section
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
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        'Quinoa Fruit Salad',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      // Quantity selector and price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Quantity selector
                          Row(
                            children: [
                              // Minus button
                              GestureDetector(
                                onTap: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.remove, color: Colors.black),
                                ),
                              ),

                              SizedBox(width: 15),

                              // Quantity number
                              Text(
                                '$quantity',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 15),

                              // Plus button
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFF4E6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.add, color: Color(0xFFF79E1B)),
                                ),
                              ),
                            ],
                          ),

                          // Price
                          Text(
                            '₦ 2,000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      // One Pack Contains section
                      Text(
                        'One Pack Contains:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                          height: 1.5,
                        ),
                      ),

                      SizedBox(height: 30),

                      // Description
                      Text(
                        'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                      ),

                      Spacer(),

                      // Bottom buttons
                      Row(
                        children: [
                          // Heart icon button
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF4E6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xFFF79E1B),
                            ),
                          ),

                          SizedBox(width: 15),

                          // Add to basket button
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/basket');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF79E1B),
                                padding: EdgeInsets.symmetric(vertical: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Add to basket',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

