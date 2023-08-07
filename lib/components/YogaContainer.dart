import 'package:fitnesscenter/screens/Home/YogaDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class YogaContainer extends StatelessWidget {
  final String name;
  const YogaContainer({super.key, this.name = "assets/images/arms1.png"});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const YogaDetails()),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(10),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    image: DecorationImage(
                        image: AssetImage(
                          name,
                        ),
                        fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Reclining to big toe",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("12 minutes"),
                  const SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    width: 140.0,
                    lineHeight: 10.0,
                    percent: 0.75,
                    barRadius: const Radius.circular(30),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.red.withOpacity(0.7),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
