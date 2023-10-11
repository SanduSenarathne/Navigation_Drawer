import 'package:flutter/material.dart';
import 'package:insume/navBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text(
          'Home page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
