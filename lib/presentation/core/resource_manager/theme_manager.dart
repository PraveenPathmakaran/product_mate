import 'package:flutter/material.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors of the app
      useMaterial3: true,
      primaryColor: ColorManager.primaryColor,

      // ripple color
      // card view theme
      cardTheme: CardTheme(
        color: ColorManager.primaryColor,
        elevation: AppSize.s4,
      ),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: getBoldStyle(color: ColorManager.whiteColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.whiteColor,
      )),

      // Text theme
      textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s16),
        displayMedium: getRegularStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s16),
        displaySmall: getBoldStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s14),
        titleMedium: getMediumStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s14),
        titleSmall: getMediumStyle(
            color: ColorManager.whiteColor, fontSize: FontSize.s14),
        bodyMedium: getMediumStyle(color: ColorManager.whiteColor),
        bodySmall: getRegularStyle(color: ColorManager.whiteColor),
        bodyLarge: getRegularStyle(color: ColorManager.whiteColor),
        labelSmall: getRegularStyle(color: ColorManager.whiteColor),
      ),

      // input decoration theme (text form field)

      inputDecorationTheme: InputDecorationTheme(
        fillColor: ColorManager.semiDarkColor,
        filled: true,

        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.whiteColor),

        // label style
        labelStyle: getMediumStyle(color: ColorManager.blackColor),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.errorColor),

        // enabled border
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.blackColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.errorColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.semiDarkColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        background: ColorManager.darkColor,
      ),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.whiteColor),
      dialogTheme: DialogTheme(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        alignment: Alignment.center,
        titleTextStyle: getRegularStyle(
          color: ColorManager.whiteColor,
          fontSize: FontSize.s20,
        ),
      ));
}
