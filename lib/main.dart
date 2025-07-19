import 'package:blinkit/bottom.dart';
import 'package:blinkit/cart.dart';
import 'package:blinkit/homescreen.dart';
import 'package:blinkit/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'category.dart';
void main() {
  runApp(const BlinkitApp());
}

class BlinkitApp extends StatelessWidget {
  const BlinkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blinkit App",
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}

class BlinkitHome extends StatefulWidget {
  const BlinkitHome({super.key});

  @override
  State<BlinkitHome> createState() => _BlinkitHomeState();
}
class _BlinkitHomeState extends State<BlinkitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFFF7F9FA)
,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
        
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      'assets/images/blinkitonboardingscreen.png',
                      fit: BoxFit.contain,
                     
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/image10.png',
                      fit: BoxFit.contain,
                     
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "India’s last minute app",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
        
            const SizedBox(height: 20),
        
            // 🟢 Card Section
            Expanded(
              flex: 3,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Pradeep",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "78277XXXX",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF9C9C9C),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottom()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Login with",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Image.asset(
                                'assets/images/image9.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Access your saved addresses from Zomato automatically!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF9C9C9C),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "or login with phone number",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF269237),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}