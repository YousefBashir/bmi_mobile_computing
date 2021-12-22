import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  String label;
  String hint;
  bool isPassword;
  TextEditingController controller;
  CustomTextFormFiled(this.label, this.controller,this.hint,
      [this.isPassword = false]);

  @override
  _CustomTextFormFiledState createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText:widget.label,
        ),
      ),
    );
  }
}
