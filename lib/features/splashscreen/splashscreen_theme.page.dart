import 'package:app/core/core.colors.dart';
import 'package:app/features/splashscreen/splashscreen.utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenThemePage extends StatefulWidget {
  const SplashScreenThemePage({super.key});

  @override
  State<SplashScreenThemePage> createState() => _SplashScreenThemePageState();
}

class _SplashScreenThemePageState extends State<SplashScreenThemePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreenUtils.setTimeOut(() {
      context.push("/onboarding");
    }, 5000);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: const SafeArea(child: Center(
        child: Image(
          image: AssetImage("assets/images/logo-light.png"),
          width: 80,
          height: 80,
        ),
      )),
    );
  }
}
