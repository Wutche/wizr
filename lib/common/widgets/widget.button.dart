import 'package:flutter/material.dart';


// outline button widget
class _OutlinedButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback action;

  const _OutlinedButton({
    super.key,
    required this.action,
    required this.child,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:GestureDetector(
        onTap: action,
        child:  Container(
          height: 42,
          decoration: BoxDecoration(
              border: Border.all(
                  color: color,
                  width: 1
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: child)
            ],
          ),
        ),
      ),);
  }
}


// solid button widget
class _SolidButton extends StatelessWidget{
  final Color color;
  final Widget child;
  final VoidCallback action;
  const _SolidButton({
    super.key,
    required this.action,
    required this.child,
    required this.color
  });

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: action,
        child: Container(
          height: 42,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: child)
            ],
          ),
        ),
      ),);
  }

}

//Common Button Widget used across the entire application for consistent design

class AppButton extends StatelessWidget {

  // outlined - decides a button type
  // color - solid color or outline color
  // child - child widget of the button
  // action - a callback function for handling pressing events

  final bool outlined;
  final Color color;
  final Widget child;
  final VoidCallback action;

  const AppButton({
    super.key,
    this.outlined = false,
    required this.action,
    required this.child,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    /** there are  kinds of common button - outlined and solid buttons
     * decides to switch the button based on the outlined params* */
    if(outlined){
      return _OutlinedButton(
        action: action,
        color: color,
        child: child,
      );
    }
    return _SolidButton(
      action: action,
      color: color,
      child: child,
    );
  }
}


