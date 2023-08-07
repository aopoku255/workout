import 'package:fitnesscenter/components/BottomBar.dart';
import 'package:fitnesscenter/screens/Home/workout.dart';
import 'package:fitnesscenter/screens/armsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        // backgroundColor: Colors.,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Michael",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 25, color: Colors.red),
            ),
            Text(
              "Let's check your activity",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                border: const Border(
                  top: BorderSide(
                      color: Color.fromARGB(76, 244, 67, 54), width: 5),
                  left: BorderSide(
                      color: Color.fromARGB(76, 244, 67, 54), width: 5),
                  right: BorderSide(
                      color: Color.fromARGB(76, 244, 67, 54), width: 5),
                  bottom: BorderSide(
                      color: Color.fromARGB(76, 244, 67, 54), width: 5),
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/profile.jpg"),
                  fit: BoxFit.cover,
                ),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(500)),
          )
        ],
      ),
      bottomNavigationBar: const BottomBar(),
      body: Container(
        // color: Colors.red,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      // height: 200,
                      width: (MediaQuery.of(context).size.width / 2) - 20,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 20),
                            child: const Text(
                              "💪 Finished",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Text(
                            "12",
                            style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Completed workouts",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Column(
                              children: [
                                Text(
                                  "🐣 In progress",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "workouts",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black45),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Column(
                              children: [
                                Text(
                                  "🕛 Time spent",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "62",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Minutes",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black45),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Discover new workouts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () => {Get.to(() => Workout())},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 130,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Body",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "10 Exercises",
                                style: TextStyle(
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "50 Minutes",
                                style: TextStyle(
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/arms1.png",
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => {Get.to(() => ArmScreen())},
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arms",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "6 Exercises",
                                style: TextStyle(
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "35 Minutes",
                                style: TextStyle(
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            // margin: EdgeInsets.only(right: 30),
                            child: Image.asset(
                              "assets/images/cardio.png",
                              // fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "🎉",
                        style: TextStyle(fontSize: 40),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Keep the progress",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "You are more successful",
                            softWrap: true,
                            maxLines: 2,
                          ),
                          Text(
                            "than 80% users",
                            softWrap: true,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
