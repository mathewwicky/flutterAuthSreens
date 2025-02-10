import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              color: Colors.white,
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 36),
              //width: double.infinity,
              width: 320,
              height: 320,
              child: Image.asset(
                'assets/images/log.png',
              )),
          SizedBox(height: 20),
          //image componet
          Text(
            "Explore the app",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Now your finances are in one place and always under control',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          // SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.only(top: 150),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Sign In",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              minimumSize: Size(300, 50),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              minimumSize: Size(300, 50),
            ),
            onPressed: () {},
            child: Text(
              "Create Account",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.green,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
