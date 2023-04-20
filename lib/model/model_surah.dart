part of '../imports/app_imports.dart';

class ModelSurah {
  ModelSurah({
    required this.code,
    required this.status,
    required this.data,
  });
  late final int code;
  late final String status;
  late final List<Surah_amane> data;

  ModelSurah.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = List.from(json['data']).map((e) => Surah_amane.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['status'] = status;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Surah_amane {
  Surah_amane({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.numberOfAyahs,
    required this.revelationType,
  });
  late final int number;
  late final String name;
  late final String englishName;
  late final String englishNameTranslation;
  late final int numberOfAyahs;
  late final String revelationType;

  Surah_amane.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    numberOfAyahs = json['numberOfAyahs'];
    revelationType = json['revelationType'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['number'] = number;
    _data['name'] = name;
    _data['englishName'] = englishName;
    _data['englishNameTranslation'] = englishNameTranslation;
    _data['numberOfAyahs'] = numberOfAyahs;
    _data['revelationType'] = revelationType;
    return _data;
  }
}
