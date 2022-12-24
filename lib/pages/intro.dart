import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshopui/pages/home.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('lib/images/avocado.png'),
          ),

          //Text: We deliver grocery to your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('We deliver groceries to your doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),

          const SizedBox(height: 24),

          //Text: fresh items daily
          Text(
            'Fresh items everyday',
            style: GoogleFonts.raleway(
              color: Colors.grey[600],
            ),
          ),
          const Spacer(),

          //Button: Get started
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const Home();
            })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: Text(
                'Get Started',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
