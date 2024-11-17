import 'package:app/core/core.colors.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget{
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 23,
        bottom: 16
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.white
      ),
      child: Image.asset("assets/images/banner-default.png",fit: BoxFit.cover,),
    );
  }

}
