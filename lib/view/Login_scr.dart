
import 'package:flutter/material.dart';
import 'package:mvvm/utils/Routes/Routes_Name.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child:  ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.Home);
            },child: Text("Click Hare"),
          ),
        ),
      ),
    );
  }
}
