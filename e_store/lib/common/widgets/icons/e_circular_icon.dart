import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECircularIcon extends StatelessWidget {

  // A Custom Circular icon widget with a background color 
  //
  // properties are: 
  // container [width], [height], [bgColor] 
  // Iconsize [size], [color], [onpressed] 

  const ECircularIcon({
    super.key,
     
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed, 
    this.width, 
    this.height, 
    this.size = ESizes.lg,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
    decoration: BoxDecoration(
      color: backgroundColor != null ? EColors.dark.withOpacity(0.9) : EColors.light.withOpacity(0.9) ,
      borderRadius: BorderRadius.circular(100)
    ),
    child: IconButton(onPressed: onPressed,icon: Icon(icon, color: color, size: size,),),
    );
  }
}