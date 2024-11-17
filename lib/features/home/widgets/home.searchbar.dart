import 'package:app/common/widgets/widget.icon_button.dart';
import 'package:app/common/widgets/widget.text.dart';
import 'package:app/core/core.colors.dart';
import 'package:app/core/enums/enum.paragraph.dart';
import 'package:flutter/material.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: AppColor.gray_2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            width: 36,
            child: Image.asset("assets/icons/locator.png"),
          ),
          AppIconButton(
              tapHandler: (){},
              child: Paragraph(
                "Enter Address",
                color: AppColor.grayShade[600],
                size: ParagraphSizes.base,
              )
          )
        ],
      ),
    );
  }
}


class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:48,
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Expanded(
              child: SearchBarContainer(),
          ),
          const SizedBox(width: 8,),
          AppIconButton(
            height: 36,
            width: 36,
            tapHandler: (){},
            child: const Icon(Icons.search),
          ),
          AppIconButton(
            height: 36,
            width: 36,
            tapHandler: (){},
            child: Image.asset("assets/icons/tune.png"),
          ),
        ],
      ),
    );
  }
}
