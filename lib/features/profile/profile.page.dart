import 'package:app/common/common.model.dart';
import 'package:app/common/layouts/layout.home.dart';
import 'package:app/common/widgets/widget.button.dart';
import 'package:app/common/widgets/widget.text.dart';
import 'package:app/core/core.colors.dart';
import 'package:app/core/enums/enum.paragraph.dart';
import 'package:app/core/services/service.firebase_auth.dart';
import 'package:app/core/services/service.snackbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  UserModel getUser(){
    var firebaseUser = FirebaseAuthService.getCurrentUser();
    if(firebaseUser != null) {
      return UserModel(
          email: firebaseUser.email,
          name: firebaseUser.displayName,
          photoURL: firebaseUser.photoURL
      );
    }
    return UserModel(
        email:"N/A",
        name: "N/A",
    );
  }

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
        backgroundColor: AppColor.white,
        activePage: "profile",
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Expanded(child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColor.darkShade[100],
                      child: Icon(Icons.person,color: AppColor.inactive,size: 80,),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Paragraph(
                      getUser().name??"N/A",
                      weight: ParagraphWeight.semiBold,
                      size: ParagraphSizes.x3l,
                      color: AppColor.dark
                  ),
                  Paragraph(
                      getUser().email??"N/A",
                      weight: ParagraphWeight.light,
                      size: ParagraphSizes.md,
                      color: AppColor.dark
                  ),
                ],
              )),
              AppButton(action: ()async{
                  await FirebaseAuthService.signOut(
                      onError: (e)=>AppSnackBar.showDefaultSnackBar(context, e.toString()),
                      onSuccess: ()=>context.go("/login")
                  );
                },
                color: AppColor.primary,
                child: Paragraph("Logout", color: AppColor.white)
              )
            ],
          ),
        )
    );
  }
}
