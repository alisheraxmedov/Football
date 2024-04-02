import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer/screen/home/home.dart';
import 'package:soccer/service/api/api.dart';
import 'package:soccer/service/get/get.dart';
import 'package:soccer/service/model/model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller _controller = Get.put(Controller());
    return Scaffold(
      body: FutureBuilder(
        future: SoccerApi().getAllMatches(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<FootballModel> football = snapshot.data!;
          _controller.dataFuncsion(football);
          // _controller.liveGame(football);
          return AnimatedSplashScreen(
            splashIconSize: MediaQuery.sizeOf(context).height,
            splash: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // splash: "assets/images/splash.jpg",
            duration: 3000,
            nextScreen: const HomeScreen(),
            splashTransition: SplashTransition.fadeTransition,
          );
        },
      ),
    );
  }
}
