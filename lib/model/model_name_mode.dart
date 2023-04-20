part of '../imports/app_imports.dart';

class Name {
  String _name;
  String _nameEn;
  String _meaning;
  String _audio;
  String _link;
  String _description;
  Name(this._name, this._nameEn, this._meaning, this._description, this._audio,
      this._link);

  String get externalLink => _link;
  String get audio => _audio;
  String get meaning => _meaning;
  String get nameEn => _nameEn;
  String get name => _name;
  String get description => _description;
}
