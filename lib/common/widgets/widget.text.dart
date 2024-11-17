import 'package:app/core/enums/enum.paragraph.dart';
import 'package:flutter/material.dart';

/// params
///   - size - button size from enum
/// function transforming the supported sizes
/// from the registered enums to a font size matching
/// the entire design theme
double _getFontSizesFromEnums(ParagraphSizes size){
  if(size == ParagraphSizes.xs) return 10;
  if(size == ParagraphSizes.sm) return 12;
  if(size == ParagraphSizes.md) return 14;
  if(size == ParagraphSizes.base) return 16;
  return 14;
}
FontWeight _getFontWeightFromEnums(ParagraphWeight weight){
  if(weight == ParagraphWeight.black) return FontWeight.w900;
  if(weight == ParagraphWeight.extraBold) return FontWeight.w800;
  if(weight == ParagraphWeight.bold) return FontWeight.w700;
  if(weight == ParagraphWeight.semiBold) return FontWeight.w600;
  if(weight == ParagraphWeight.medium) return FontWeight.w500;
  if(weight == ParagraphWeight.light) return FontWeight.w300;
  if(weight == ParagraphWeight.extraLight) return FontWeight.w100;
  return FontWeight.w400;
}

// widget for the paragraph styles in the entire application
class Paragraph extends StatelessWidget {
  final String text;
  final Color? color;
  final bool centered;
  final ParagraphSizes size;
  final ParagraphWeight weight;

  const Paragraph(
      this.text, {
        super.key,
        this.centered = true,
        this.size = ParagraphSizes.md,
        required this.color,
        this.weight = ParagraphWeight.regular
      }
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: centered?TextAlign.center:null,
      style: TextStyle(
        color: color,
        fontSize: _getFontSizesFromEnums(size),
        letterSpacing: 0,
        fontWeight: _getFontWeightFromEnums(weight),
        height: 1.5
      ),
    );
  }
}
