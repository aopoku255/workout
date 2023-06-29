import 'package:flutter/material.dart';

class AppBarComp extends StatefulWidget {
  const AppBarComp({super.key});

  @override
  State<AppBarComp> createState() => _AppBarCompState();
}

class _AppBarCompState extends State<AppBarComp> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      // backgroundColor: Colors.red,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Michael",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
          ),
          Text(
            "Let's check your activity",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              border: const Border(
                top: BorderSide(color: Colors.black, width: 3),
                left: BorderSide(color: Colors.black, width: 3),
                right: BorderSide(color: Colors.black, width: 3),
                bottom: BorderSide(color: Colors.black, width: 3),
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(500)),
        )
      ],
    );
  }
}
