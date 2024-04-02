import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:soccer/screen/home/widgets/column.dart';
import 'package:soccer/service/get/get.dart';

class SliderWidget extends StatelessWidget {
  final double screenWidth;
  final Controller controller;
  const SliderWidget({
    super.key,
    required this.screenWidth,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: controller.dataList.length,
      itemBuilder: (context, index, realIndex) {
        return SizedBox(
          width: screenWidth * 0.8,
          child: Card(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      screenWidth * 0.025,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/card/2.jpg",
                      ),
                    ),
                  ),
                ),
                ColumnWidget(
                  size: screenWidth,
                  index: index,
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        // aspectRatio: 6 / 4,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOutCubicEmphasized,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

/*
CarouselSlider(
        items: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Text("Index $index");
            },
          ),
        ],
        options: CarouselOptions(
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: const Duration(seconds: 800),
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayCurve: Easing.emphasizedAccelerate,
          scrollDirection: Axis.horizontal,
        ),
      ),

 */