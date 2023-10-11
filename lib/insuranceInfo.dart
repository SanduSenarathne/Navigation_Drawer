import 'package:flutter/material.dart';

class InsuranceInfo extends StatefulWidget {
  const InsuranceInfo({super.key});

  @override
  State<InsuranceInfo> createState() => _InsuranceInfoState();
}

class _InsuranceInfoState extends State<InsuranceInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insurance Information"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text(
          'Insurance Information',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
