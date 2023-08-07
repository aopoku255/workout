import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YogaDetails extends StatefulWidget {
  const YogaDetails({super.key});

  @override
  State<YogaDetails> createState() => _YogaDetailsState();
}

class _YogaDetailsState extends State<YogaDetails> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'UgkxLcIvKxo7THpbnlrAGD-Z8Q8MAzsiRe5g',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: ListView(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              // child: YoutubePlayer(
              //   controller: _controller,
              //   showVideoProgressIndicator: true,
              // ),
              child: Image.asset("assets/images/arms1.png"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Reclining to big toe",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Toe Lifts: Sit on a chair with your feet flat on the ground. Lift your toes while keeping your heels on the ground. Hold for a few seconds, then lower your toes. Repeat for a set of 10-15 repetitions.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Nutritional Foods",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/food.png"))),
                ),
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/freshfood.png"))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/liquid.png"))),
                ),
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/liquid1.png"))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Food Benefits",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Weight Management: A balanced diet helps you maintain a healthy weight or achieve weight loss goals.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Reduced Risk of Chronic Diseases: A diet rich in fruits, vegetables, whole grains, lean proteins, and healthy fats can lower the risk of heart disease, diabetes, and certain cancers.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Stronger Immune System: Nutrient-rich foods help bolster your immune system, making your body more resilient against infections and illnesses.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
