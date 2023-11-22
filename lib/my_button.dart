import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function ()? onTap;
  const MyButton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(color: Colors.blue,
          borderRadius: BorderRadius.circular(40),),

        child: Center(
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),

          ),

        ),
      ),
    );
  }
}