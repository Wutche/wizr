import 'package:app/common/widgets/widget.button.dart';
import 'package:app/common/widgets/widget.text.dart';
import 'package:app/core/core.colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.light,
      body: SafeArea(
          child:Column(
            children: [
              Expanded(child:Center(
                child:Image.asset("assets/images/logo.png") ,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    AppButton(
                      action: (){},
                      outlined: true,
                      color: AppColor.primary ,
                      child: Paragraph("PREVIOUS",color: AppColor.primary,),
                    ),
                    const SizedBox(width: 13,),
                    AppButton(
                      action: ()=> context.push("/"),
                      color: AppColor.primary ,
                      child: Paragraph("SKIP",color: AppColor.white,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32,),
              Container(
                width: double.infinity,
                height: 54,
                color: AppColor.gray,
              )
            ],
          ),
        ),
      );
  }
}

