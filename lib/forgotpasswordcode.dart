import 'package:flutter/material.dart';

class Forgotpasswordcode extends StatelessWidget {
  const Forgotpasswordcode({super.key});

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
                    Navigator.pushNamed(context, '/forgotpassword');
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
            "Please check your email",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(4),
            child: Text(
              "We’ve sent a code to helloworld@gmail.com",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 25,
                child: TextField(
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                child: TextField(
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                child: TextField(
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                child: TextField(
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                ),
              ),
            ],
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
              Navigator.pushNamed(context, '/resetpassword');
            },
            child: Text(
              "Verify",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
