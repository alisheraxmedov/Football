import 'package:get/get.dart';
import 'package:soccer/service/model/model.dart';

class Controller extends GetxController {
  var dataList = <FootballModel>[].obs;

  void dataFuncsion(List<FootballModel> data) {
    dataList.assignAll(data);
  }

  // var liveGameData = <FootballModel>[].obs;
  // void liveGame(List<FootballModel> data){
  //   for (int i = 0; i < dataList.length; i++) {
  //     print(dataList[i].venue['name']);
  //   }
  //   print("Length: ${dataList.length}");
  //   print("Length: ${liveGameData.length}");
  // }
}
