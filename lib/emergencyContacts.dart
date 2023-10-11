import 'package:flutter/material.dart';

class EmerContacts extends StatefulWidget {
  const EmerContacts({super.key});

  @override
  State<EmerContacts> createState() => _EmerContactsState();
}

class _EmerContactsState extends State<EmerContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency Contacts"),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Text(
          'Emergency Contacts',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
