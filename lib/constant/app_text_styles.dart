import 'package:flutter/material.dart';
import 'package:habit_tracker/constant/app_color.dart';


class AppTextStyles {
  // Base text style builder method
  static TextStyle _baseStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  // Flexible Heading Styles
  static TextStyle appTitle({
    double fontSize = 48,
    FontWeight fontWeight = FontWeight.w900,
    Color color = AppColors.primary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle welcomeTitle({
    double fontSize = 28,
    FontWeight fontWeight = FontWeight.w700,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle subtitle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.textSecondary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Flexible Label Styles
  static TextStyle labelBold({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle labelLight({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.textSecondary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Flexible Button Styles
  static TextStyle buttonText({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w700,
    Color color = AppColors.textLight,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle linkText({
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.primary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Flexible Body Text Styles
  static TextStyle bodyBold({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.bold,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyRegular({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodyLight({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.textSecondary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Flexible Hint Text Style
  static TextStyle hintText({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? AppColors.hintColor,
    );
  }

  // Flexible Heading Variants
  static TextStyle heading1({
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.bold,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle heading2({
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle heading3({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w500,
    Color color = AppColors.textPrimary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Flexible Caption and Small Text
  static TextStyle caption({
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.textSecondary,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle smallText({
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.textMuted,
  }) {
    return _baseStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}