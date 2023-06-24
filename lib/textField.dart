import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final IconData iconData;
  final String textHint;
  final TextEditingController controller;
  AuthTextField({required this.iconData, required this.textHint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
             iconData,
            color: Colors.black45,
          ),
          hintText: textHint,
        ),
      ),
    );
  }
}
