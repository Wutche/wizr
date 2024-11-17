
import 'package:flutter/material.dart';

class LinkDataObject {
  final String icon;
  final String text;
  final String key;
  final String activeIcon;
  final  Function action;

  LinkDataObject(
    this.text,{
      required this.action,
      required this.key,
      required this.icon,
      required this.activeIcon
    }
  );
}