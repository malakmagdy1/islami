import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/layout/home_layout.dart';

class SplashView extends StatelessWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg.jpg"),
        fit: BoxFit.fill,
      )),
    );
  }
}
