import 'package:flutter/material.dart';

class Signscreen extends StatelessWidget {
  const Signscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            width: 200,
            height: 200,
            child: Image.asset('assets/images/log.png'),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Log in",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment(-0.9, 0),
            child: Text(
              "Email",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          // SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                // labelText: "Email",
                hintText: "example@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            alignment: Alignment(-0.9, 0),
            child: Text(
              "Password",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          // SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),

          // Container(
          //   padding: EdgeInsets.only(bottom: 6, top: 4),
          //   margin: EdgeInsets.only(left: 250),
          //   child: Text(
          //     "Forgot password?",
          //     textAlign: TextAlign.end,
          //     style: TextStyle(
          //       fontFamily: "Poppins",
          //       fontSize: 15,
          //       fontWeight: FontWeight.normal,
          //     ),
          //   ),
          // ),

          Container(
            padding: EdgeInsets.only(bottom: 3, top: 1),
            margin: EdgeInsets.only(left: 250),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero, // Remove extra padding
                minimumSize: Size(0, 0), // Remove minimum tap area
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // Prevent extra spacing
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/forgotpassword');
              },
              child: Text(
                "Forgot password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.green,
                ),
              ),
            ),
          ),

          SizedBox(height: 28),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              minimumSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: Text(
              "Log in",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("______________Or Login with_____________"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //elevation: 1,
                  minimumSize: Size(108, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Image.asset("assets/icons/Facebook.png"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // elevation: 2,
                  minimumSize: Size(108, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Image.asset("assets/icons/Google.png"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //elevation: 2,
                  minimumSize: Size(108, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Image.asset("assets/icons/Apple.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
