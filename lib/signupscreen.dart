import 'package:flutter/material.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

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
            padding: const EdgeInsets.only(right: 320),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Email",
          textAlign: TextAlign.end,),
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
           Text("Create Password"),
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
          
           Text("Confirm Password"),
          //SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                //labelText: "Confirm Password",
               // hintText: "example@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
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
              "Sign Up",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("______________Or Register with_____________"),
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
                "Already have an account?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Login",
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
