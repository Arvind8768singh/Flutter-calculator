import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //stateless widget named my  button
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton(
      {super.key,
      required this.title,
      this.color = Colors.grey,
      required this.onpress}); //constructor of class my button

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
