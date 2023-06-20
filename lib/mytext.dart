import 'package:flutter/material.dart';

class mytext extends StatefulWidget {
  final String lb;
  final bool obscureText;
  final controller;
  final prefixIcon;
  const mytext(
      {super.key,
      required this.lb,
      required this.obscureText,
      required this.controller,
      required this.prefixIcon});

  @override
  State<mytext> createState() => _mytextState();
}

class _mytextState extends State<mytext> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: widget.lb,
            prefixIcon: widget.prefixIcon,
            labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.bold),
          ),
          obscureText: widget.obscureText,
        ),
      ),
    );
  }
}
