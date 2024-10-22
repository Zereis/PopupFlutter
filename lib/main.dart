import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the popup dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return _buildPopupDialog(context);
              },
            );
          },
          child: Text('Show Popup'),
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 360,
        height: 360,
        child: Stack(
          alignment: Alignment.center, 
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/background.jpg', 
                width: 360, // Set width to 360 pixels
                height: 360, // Set height to 360 pixels
                fit: BoxFit.cover, 
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(flex: 1),
                  // Title
                  Text(
                    'Start your\n14-day free trial',
                    style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black, 
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 1), 
                  // Start Free Trial Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Start Free Trial',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Contact Support Button
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Contact Support',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ),
                  Spacer(flex: 1), 
                  // Terms and Conditions aligned to the right
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        // Open Terms and Conditions
                      },
                      child: Text(
                        'Terms & conditions',
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                          fontSize: 12, // Smaller font size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
