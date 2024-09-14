import 'package:flutter/material.dart';

class ECheckBoxTheme {
  ECheckBoxTheme._();

  // Custome light theme checkbox theme

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );

  // Custome light theme checkbox theme
static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );

}