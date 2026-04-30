import 'package:flutter/material.dart';
import 'package:flutter_class/call_login.dart';

class Welcome extends StatelessWidget {
  String username;
  String password;

  Welcome({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, top: 100, right: 20),
        child: Column(
          children: [
            Text(
              "Welcome $username !!",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Call_Login()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
