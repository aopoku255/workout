import 'package:fitnesscenter/components/BottomBar.dart';
import 'package:fitnesscenter/components/YogaContainer.dart';
import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/arms.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 10,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: const Text(
                      "Yoga Workout",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.add_alarm,
                              color: Colors.white,
                            ),
                            Text(
                              "52:00",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.accessibility,
                              color: Colors.white,
                            ),
                            Text(
                              "Excercises",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      YogaContainer(),
                      SizedBox(
                        height: 20,
                      ),
                      YogaContainer(name: "assets/images/arm3.png"),
                      SizedBox(
                        height: 20,
                      ),
                      YogaContainer(
                        name: "assets/images/lady2.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      YogaContainer(
                        name: "assets/images/squart.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      YogaContainer(
                        name: "assets/images/skip.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      YogaContainer(name: "assets/images/armmale.png"),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
