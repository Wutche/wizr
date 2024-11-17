import 'package:app/common/layouts/layout.home.dart';
import 'package:app/core/core.colors.dart';
import 'package:app/features/home/widgets/home.banner.dart';
import 'package:app/features/home/widgets/home.searchbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
        backgroundColor: AppColor.light,
        child: const Column(
          children: [
            HomeSearchBar(),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeBanner()
                    ],
                  ),
            ))
          ],
        )
    );
  }
}
