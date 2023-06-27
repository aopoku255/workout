import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final onTap;
  const Button({super.key, this.name = "Next", this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width - 40,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 201, 14, 0),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        height: 50,
        child: Center(
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
