import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreenDefaultState extends State {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: " ",
        description: "Make a New Friend !",
        styleDescription: TextStyle(
          fontSize: 38,
          fontFamily: "Tajawal-Light",
          fontWeight: FontWeight.w900,
          color: Colors.black,
          letterSpacing: 1,
        ),
        pathImage: "images/3.png",
        backgroundColor: Color(0xffd1d1d1),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    log:
    Text("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
