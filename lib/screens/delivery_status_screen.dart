import 'package:flutter/material.dart';

// This is our main screen class
// StatelessWidget means the screen does NOT change dynamically
class DeliveryStatusScreen extends StatelessWidget {
  // Constructor
  const DeliveryStatusScreen({super.key});

  // This method builds the UI of the screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------------- APP BAR ----------------
      appBar: AppBar(
        backgroundColor: Color(0xFFF79E1B), // Orange color
        title: Text("Delivery Status", style: TextStyle(color: Colors.white)),

        // Back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
      ),

      // ---------------- BODY ----------------
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            // This makes the container take full height
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),

                // Scroll if content becomes long
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Step 1
                      buildStep(
                        icon: Image.asset(
                          'lib/assets/images/ordertaken.png',
                          height: 50,
                          width: 50,
                        ),
                        title: "Order Taken",
                        isCompleted: true,
                        isActive: false,
                        backgroundColor: Color(0xFFFFFAEB), // Green/olive
                      ),

                      // Dashed line connector
                      buildDashedLine(),

                      // Step 2
                      buildStep(
                        icon: Image.asset(
                          "lib/assets/images/orderprepared.png"
                        ),
                        title: "Order Is Being Prepared",
                        isCompleted: true,
                        isActive: false,
                        backgroundColor: Color(0xFFF1EFF6), // Light gray
                      ),

                      // Dashed line connector
                      buildDashedLine(),

                      // Step 3
                      buildStep(
                        icon: Image.asset(
                          "lib/assets/images/delivery.png"
                        ),
                        title: "Order Is Being Delivered",
                        subtitle: "Your delivery agent is coming",
                        isCompleted: false,
                        isActive: true,
                        backgroundColor: Color(0xFFFFE5E5), // Light pink/red
                        rightIcon: Image.asset(
                          "lib/assets/images/calllog.png",
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ),

                      // Dashed line connector
                      buildDashedLine(),

                      // Map placeholder
                      Container(
                        height: 150,
                        width: 327,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        // color: Colors.grey[300],
                        child: Center(
                          child: Image.asset(
                            "lib/assets/images/map.png",
                            width: 327,
                            height: 250,
                          ),
                        ),
                      ),

                      // Dashed line connector
                      buildDashedLine(),

                      // Step 4
                      buildStep(
                        icon: Image.asset(
                          "lib/assets/images/greentick.png"
                        ),
                        title: "Order Received",
                        isCompleted: false,
                        isActive: false,
                        backgroundColor: Colors.transparent,
                        rightIcon: Image.asset(
                          "lib/assets/images/threedots.png",
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,

                        ),
                        showRightIconBackground: false,
                        
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

  // -------------------------------------------------
  // This function creates each step row
  // -------------------------------------------------
  Widget buildStep({
    required Widget icon,
    required String title,
    String? subtitle,
    required bool isCompleted,
    required bool isActive,
    required Color backgroundColor,
    Widget? rightIcon,
    bool showRightIconBackground = true,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left side circle
        Container(
          width: 65,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          child: Center(child: icon),
        ),

        SizedBox(width: 15),

        // Middle text
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                if (subtitle != null)
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
              ],
            ),
          ),
        ),

        // Right side - show custom icon if provided, otherwise show check icon if completed
        if (rightIcon != null)
          showRightIconBackground
              ? Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF79E1B),
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: rightIcon,
                    ),
                  ),
                )
              : SizedBox(
                  width: 50,
                  height: 50,
                  child: rightIcon,
                )
        else if (isCompleted)
          SizedBox(
            width: 35,
            height: 35,
            child: Image.asset(
              "lib/assets/images/greentick.png",
              fit: BoxFit.contain,
            ),
          ),
      ],
    );
  }

  // -------------------------------------------------
  // This function creates the dashed line connector
  // -------------------------------------------------
  Widget buildDashedLine() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 32, top: 8, bottom: 8),
        child: SizedBox(
          width: 2,
          height: 40,
          child: Image.asset(
            "lib/assets/images/dashedline.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

}
