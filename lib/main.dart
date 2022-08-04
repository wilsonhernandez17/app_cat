import 'package:flutter/material.dart';
import 'package:gatos_app/pages/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreenView(
          navigateRoute: HomePage(),
          duration: 5000,
          imageSize: 130,
          imageSrc: "assets/images/splash.png",
          text: "App Cat",
          textType: TextType.ColorizeAnimationText,
          textStyle: TextStyle(
            fontSize: 40.0,
          ),
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.yellow,
            Colors.red,
          ],
        ));
  }
}
