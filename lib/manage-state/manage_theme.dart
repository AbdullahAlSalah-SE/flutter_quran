part of '../../imports/app_imports.dart';

class ManageTheme extends ChangeNotifier {
  /// [theme] = false mean it will be light
  ///[theme]= true means it will be dark

  bool theme = false;

  ///[updatetheme] change the value of the switch for dark mod
  updateTheme(bool value) {
    theme = value;
    notifyListeners();
  }

  //change the mod

  ThemeMode get themeMode => theme ? ThemeMode.dark : ThemeMode.light;
}
