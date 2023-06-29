import 'package:fitnesscenter/screens/Home/index.dart';
import 'package:fitnesscenter/screens/Home/workout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // elevation: 5,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              "assets/icons/home.png",
              color: Colors.red,
              height: 30,
            ),
            onPressed: () {
              Get.to(() => const Index());
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/workouts.png",
              color: Colors.red,
              height: 30,
            ),
            onPressed: () {
              Get.to(() => const Workout());
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/settings.png",
              color: Colors.red,
              height: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
