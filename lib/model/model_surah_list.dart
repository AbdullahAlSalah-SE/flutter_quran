part of '../imports/app_imports.dart';

class ModelSurahList {
  List<ModelSurah>? Surah_list;

  /// [
  /// ModelSurah(id:5,nameApp:'facebook'),
  /// ModelSurah(id:6,nameApp:'twitter'),
  /// ]
  ModelSurahList({this.Surah_list});

  ModelSurahList.fromJson(Map<String, dynamic> json)
      : assert(json[ApiKey.surah] != null) {
    // * init list
    Surah_list = <ModelSurah>[];
    json[ApiKey.social].forEach((app) {
      Surah_list!.add(ModelSurah.fromJson(app));
    });
  }

  /// [
  /// ModelSurah(id:5,nameApp:'facebook'),
  /// ModelSurah(id:6,nameApp:'twitter'),
  /// ]
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (Surah_list != null) {
      /// ModelSurah(id:5,nameApp:'facebook').toJson(),
      data[ApiKey.surah] = Surah_list!.map((app) => app.toJson()).toList();
    }
    return data;
  }
}
