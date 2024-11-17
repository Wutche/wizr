import 'package:app/core/core.colors.dart';
import 'package:app/features/splashscreen/splashscreen.utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreenUtils.setTimeOut(() {
      context.push("/splashscreen-theme");
    }, 4000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: const SafeArea(child: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
          width: 80,
          height: 80,
        ),
      )),
    );
  }
}
