part of '../imports/app_imports.dart';

abstract class ApiHandle {
  // * get  Social app as List
  Future<ModelSurahList?> getSurah(BuildContext context);

  // * get  Premium app as List
  Future getDekr(BuildContext context);
}
