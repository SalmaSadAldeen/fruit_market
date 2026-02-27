import 'package:flutter/material.dart';
import 'package:fruit_market/feature/splash/presentation/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home:SplashView() ,
    );

    
  }
}
