import 'package:flutter/material.dart';

class Players extends StatelessWidget {
  final double width;
  const Players({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            width: width * 0.15,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  "assets/background/ronaldo.jpg",
                ),
                fit: BoxFit.cover
              ),
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.lightBlue,
              ),
            ),
          ),
        );
      },
    );
  }
}
