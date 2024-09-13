import 'package:flutter/material.dart';

class EColors{
  EColors._();

  // app basic color
  static const Color primary = Color(0xFF4868FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);


// gradient colors

static const Gradient linearGredient = LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.777, -0.777),
  colors: [
    Color(0xFFff9a9a),
    Color(0xFFfad0c4),
    Color(0xFFfad0c4),    

]);




// text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // background color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // background container colors

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = EColors.textWhite.withOpacity(0.1);

  // button colors
  static const buttonPrimary = Color(0xFF4b68ff);
  static const buttonSecondary = Color(0xFF6C757D);
  static const buttonDisabled = Color(0xFFc4c4c4);

  // border color

  static const borderPrimary = Color(0xFFd9d9d9);
  static const borderSecondary = Color(0xFFe6e6e6);

// error and validation colors

static const Color error = Color(0xFFD32F2F); 
static const Color success = Color(0xFF388E3C);
static const Color warning = Color(0xFFf57c00);
static const Color info = Color(0xFF1976d2); 


// neutral shades

static const Color black = Color(0xFF232323); 
static const Color darkerGrey = Color(0xFF4f4f4f);
static const Color darkGrey = Color(0xFF939393);
static const Color grey = Color(0xFFe0e0e0);
static const Color softGrey = Color(0xFFf4f4f4);
static const Color lightGrey = Color(0xFFf9f9f9);
static const Color white = Color(0xFFffffff);

}