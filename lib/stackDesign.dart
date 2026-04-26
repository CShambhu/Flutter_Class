import 'package:flutter/material.dart';

class StackDesign extends StatelessWidget {
  const StackDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 50),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                // middle layer - green card on top of the container
                Positioned(
                  top: 30,
                  left: 40,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Center(child: Text("hello")),
                  ),
                ),
                Positioned(
                  top: 7,
                  right: 10,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Text("10"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}