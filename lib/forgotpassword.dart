import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Image.asset("assets/icons/chevron.left.png"),
                ),
              ),
              Container(
                  width: 193,
                  height: 193,
                  child: Image.asset(
                    "assets/images/log.png",
                  )),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Forgot password?",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(4),
            child: Text(
              "Don’t worry! It happens. Please enter the email associated with your account.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 12),
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                // labelText: "Email",
                hintText: "Enter your email address",
                hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
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
            onPressed: () {
              Navigator.pushNamed(context, '/forgotpasswordcode');
            },
            child: Text(
              "Send code",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember password?",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: Text(
                    "Sign in",
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
          ),
        ],
      ),
    );
  }
}
