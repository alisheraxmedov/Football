import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:soccer/service/get/get.dart';
import 'package:soccer/widgets/text.dart';

class ColumnWidget extends StatelessWidget {
  final double size;
  final int index;
  const ColumnWidget({
    super.key,
    required this.size,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return Obx(
      () => Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size * 0.05,
                vertical: size * 0.005,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: Get.find<Controller>()
                            .dataList[index]
                            .venue["name"],
                        size: size * 0.022,
                        weight: FontWeight.bold,
                      ),
                      TextWidget(
                        text: Get.find<Controller>()
                            .dataList[index]
                            .venue["city"],
                        size: size * 0.022,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Container(
                    height: size * 0.1,
                    width: size * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          Get.find<Controller>().dataList[index].league["logo"],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
//======================= Home Team =======================
                Row(
                  children: [
                    Container(
                      height: size * 0.12,
                      width: size * 0.12,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            Get.find<Controller>().dataList[index].home["logo"],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: size * 0.028),
                    Get.find<Controller>()
                                .dataList[index]
                                .scoreFullTime["home"] !=
                            null
                        ? TextWidget(
                            text: Get.find<Controller>()
                                .dataList[index]
                                .scoreFullTime["home"]
                                .toString(),
                            size: size * 0.055,
                            weight: FontWeight.bold,
                          )
                        : TextWidget(
                            text: "0",
                            size: size * 0.055,
                            weight: FontWeight.bold,
                          ),
                  ],
                ),
//======================= Time =======================
                Container(
                  alignment: Alignment.center,
                  height: size * 0.13,
                  width: size * 0.13,
                  decoration: BoxDecoration(
                    color: Get.find<Controller>()
                                .dataList[index]
                                .status["elapsed"] ==
                            90
                        ? Colors.red
                        : Colors.lightGreen,
                    shape: BoxShape.circle,
                  ),
                  child: Get.find<Controller>()
                              .dataList[index]
                              .scoreFullTime["away"] !=
                          null
                      ? TextWidget(
                          text:
                              "${Get.find<Controller>().dataList[index].status["elapsed"]}'",
                          size: size * 0.05,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        )
                      : TextWidget(
                          text: "0'",
                          size: size * 0.05,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                ),

//======================= Away Team =======================
                Row(
                  children: [
                    Get.find<Controller>()
                                .dataList[index]
                                .scoreFullTime["away"] !=
                            null
                        ? TextWidget(
                            text: Get.find<Controller>()
                                .dataList[index]
                                .scoreFullTime["away"]
                                .toString(),
                            size: size * 0.055,
                            weight: FontWeight.bold,
                          )
                        : TextWidget(
                            text: "0",
                            size: size * 0.055,
                            weight: FontWeight.bold,
                          ),
                    SizedBox(width: size * 0.028),
                    Container(
                      height: size * 0.12,
                      width: size * 0.12,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            Get.find<Controller>().dataList[index].away["logo"],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getText("Refere"),
                    getText2(Get.find<Controller>().dataList[index].refere),
                  ],
                ),
                divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getText("Date"),
                    getText2(
                      Get.find<Controller>()
                          .dataList[index]
                          .date
                          .substring(0, 10),
                    ),
                  ],
                ),
                divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getText("Round"),
                    getText2(
                      Get.find<Controller>()
                          .dataList[index]
                          .league["round"]
                          .substring(
                            Get.find<Controller>()
                                    .dataList[index]
                                    .league["round"]
                                    .length -
                                2,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getText(String text) {
    return TextWidget(
      text: text,
      size: size * 0.02,
      weight: FontWeight.bold,
    );
  }

  Widget getText2(String text) {
    return TextWidget(
      text: text,
      size: size * 0.03,
    );
  }

  Widget divider() {
    return const VerticalDivider(
      thickness: 2.0,
      color: Colors.white,
      indent: 0,
      endIndent: 0,
    );
  }
}
