import 'package:flutter/material.dart';

void main() {
  runApp(const MyMainApp());
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home: const MyFirstScreen(),
    );
  }
}

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("This is flutter Class",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight(500),
            color: Colors.blue,
          ),
          ),
          Text("The First line"),
          Image.asset("assets/images/superman.png",
          height: 200,
          width: 150,
          ),
          Image.network('https://picsum.photos/200',
          height: 200,
          width: 150),
          SizedBox(height: 50,),
          Icon(Icons.favorite, size: 32, color: Colors.red),
          Row(
            children: [
              Text("new Line in Row  "),
              Icon(Icons.beach_access)
            ],
          ),
        ],
      ),
    );
  }
}

















