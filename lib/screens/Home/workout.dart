import 'package:fitnesscenter/components/BottomBar.dart';
import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/profile.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Text(
                      "Yoga Workout",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            children: [
                              Icon(
                                Icons.punch_clock,
                                color: Colors.white,
                              ),
                              Text(
                                "52:00",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            children: [
                              Icon(
                                Icons.punch_clock,
                                color: Colors.white,
                              ),
                              Text(
                                "Excercises",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
