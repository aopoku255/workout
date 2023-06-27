import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/home.png",
              color: Colors.red,
              height: 30,
            ),
            Image.asset(
              "assets/icons/workouts.png",
              color: Colors.red,
              height: 30,
            ),
            Image.asset(
              "assets/icons/settings.png",
              color: Colors.red,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
