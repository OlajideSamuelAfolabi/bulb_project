import 'package:flutter/material.dart';

void main() {
  runApp(const BulbApp());
}

class BulbApp extends StatefulWidget {
  const BulbApp({super.key});

  @override
  State<BulbApp> createState() => _BulbAppState();
}

class _BulbAppState extends State<BulbApp> {
  bool isBulbOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (isBulbOn)
                  ? Image.asset("images/on.jpg")
                  : Image.asset("images/off.jpg"),
              TextButton(
                onPressed: () {
                  setState(() {
                    isBulbOn = !isBulbOn;
                  });
                },
                child: const Text("CHANGE"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
