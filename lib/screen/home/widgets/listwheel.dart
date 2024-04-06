import 'package:flutter/material.dart';

class ListWheelWidget extends StatelessWidget {
  const ListWheelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: ListWheelScrollView(
    //     itemExtent: 200.0,
    //     children: [
    //       Container(
    //         height: 50,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         height: 50,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         height: 50,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         height: 50,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         height: 50,
    //         color: Colors.red,
    //       ),
    //     ],
    //   ),
    // );
    return ListWheelScrollView(
      itemExtent: 200.0,
      children: [
        Container(
          height: 50,
          color: Colors.red,
        ),
        Container(
          height: 50,
          color: Colors.red,
        ),
        Container(
          height: 50,
          color: Colors.red,
        ),
        Container(
          height: 50,
          color: Colors.red,
        ),
        Container(
          height: 50,
          color: Colors.red,
        ),
      ],
    );
  }
}
