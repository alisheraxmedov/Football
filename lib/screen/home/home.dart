// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer/screen/home/widgets/players.dart';
import 'package:soccer/service/get/get.dart';
import 'package:soccer/widgets/slider.dart';
import 'package:soccer/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.sizeOf(context).width;
    final Controller _controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 9, 123),
        title: TextWidget(
          text: "Football App",
          size: _screenWidth * 0.08,
          weight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: _screenWidth * 0.9,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/background/back1.jpg"),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: _screenWidth * 0.12,
                            width: _screenWidth,
                            // color: Colors.blue,
                          ),
                          // Players(width: _screenWidth),
                          SizedBox(
                            height: _screenWidth * 0.18,
                            width: _screenWidth,
                            child: Players(width: _screenWidth),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              height: _screenWidth * 0.07,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: _screenWidth * 0.05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: "Live Matches",
                                      size: _screenWidth * 0.05,
                                      weight: FontWeight.bold,
                                      spacing: 1.5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: _screenWidth,
                                  child: SliderWidget(
                                    screenWidth: _screenWidth,
                                    controller: _controller,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: _screenWidth * 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ======================= ListWheelScrollView =======================
        ],
      ),
      // body: Container(
      //   color: Colors.red,
      //   child: Center(
      //     child: Obx(
      //       () => Text(
      //         _controller.dataList[0].date,
      //         style: const TextStyle(color: Colors.white),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
