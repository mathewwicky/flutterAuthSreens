import 'package:flutter/material.dart';

class Passwordchanged extends StatelessWidget {
  const Passwordchanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/images/log.png',
              
              alignment: Alignment.center,
              
            ),
            SizedBox(height: 20),
            Text(
              "Password changed",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your password has been changed succesfully",
              style: TextStyle(
                fontFamily: "Poppins",
                //color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  minimumSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: Text(
                  "Back to login",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 16,
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
