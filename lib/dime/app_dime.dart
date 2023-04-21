part of '../imports/app_imports.dart';

class AppDime {
  static double base = 2;

  static double xs = base; // 2.0

  static double sm = xs * base; // 4.0

  static double md = sm * base; // 8.0
  static double md_2 = 10 * base; // 8.0
  static double md_10 = 10;
  static double md_11 = 11;

  static double md_12 = 12;

  static double md_13 = 13;
  static double md_14 = 14;

  static double lg = md * base; // 16.0

  static double lg_1 = (md * base) * one_57; // 25.12
  static double lg_2 = (md * base) * one_25; // 20

  static double xlg = lg * base; // 32.0

  static double xxlg = xlg * base; // 64.0

  static double xxlg_8 = xxlg * one_25; // 80
  static double xxlg_9 = xxlg * one_41; // 90
  static double xxlg_1 = xxlg * one_57; // 100

  static double xxxlg = xxlg * base; // 128.0

  static double one_25 = 1.25;
  static double one_41 = 1.41;
  static double one_57 = 1.57;

  static double half = 0.5;
  static double quarter = 0.25;
  static double fullScreen = 1;
}
