import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData theme = new ThemeData(
    primarySwatch: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR),
    primaryColor:     ColorService.createMaterialColor(EYColors.EY_DARK2_GREY_COLOR),
    accentColor: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR),
    scaffoldBackgroundColor:   ColorService.createMaterialColor(EYColors.EY_GREY_COLOR),
    backgroundColor:   ColorService.createMaterialColor(EYColors.EY_GREY_COLOR),
    cardColor: ColorService.createMaterialColor(EYColors.EY_DARK_GREY_COLOR),
    errorColor: ColorService.createMaterialColor(EYColors.EY_RED_COLOR),
    indicatorColor: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR),
    canvasColor: ColorService.createMaterialColor(EYColors.EY_GREY_COLOR),
    dividerColor: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR),
    buttonColor:ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR),
    textTheme: textTheme,
    iconTheme: iconTheme
);

final  TextTheme textTheme = new TextTheme(
    title: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR), fontFamily:'Roboto'),
//  display4: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR)),
//  display3: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR)),
//  display2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR)),
//  display1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR)),
  headline: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto'),
  subhead: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_BRAND_COLOR), fontFamily:'Roboto'),
  body2: TextStyle(fontSize: 12.0, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto'),
  body1: TextStyle(fontSize: 16.0, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto'),
  caption: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto'),
  button: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_DARK2_GREY_COLOR), fontFamily:'Roboto'),
  subtitle: TextStyle(fontSize: 12.0, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto'),
  overline: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR), fontFamily:'Roboto')
);

final IconThemeData iconTheme = new IconThemeData(
color: ColorService.createMaterialColor(EYColors.EY_WHITE_COLOR)
);