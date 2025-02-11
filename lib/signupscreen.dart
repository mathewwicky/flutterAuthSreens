import 'package:flutter/material.dart';


// Host (Parent) Widget - Holds the actual state
class HostWidget extends StatefulWidget {
  @override
  _HostWidgetState createState() => _HostWidgetState();
}

class _HostWidgetState extends State<HostWidget> {
  bool _isLoggedIn = false;

  void _toggleLogin(bool status) {
    setState(() {
      _isLoggedIn = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lifting State Up Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_isLoggedIn ? "Logged In" : "Logged Out",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          LoginWidget(onLogin: _toggleLogin), // Passing function to child
        ],
      ),
    );
  }
}

// Login (Child) Widget - Calls parent's function to update state
class LoginWidget extends StatelessWidget {
  final Function(bool) onLogin;

  LoginWidget({required this.onLogin});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => onLogin(true), // Calls parent's function
          child: Text("Login"),
        ),
        ElevatedButton(
          onPressed: () => onLogin(false),
          child: Text("Logout"),
        ),
      ],
    );
  }
}
