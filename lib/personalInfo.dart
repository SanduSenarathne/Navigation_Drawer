import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text(
          'Personal Information',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
