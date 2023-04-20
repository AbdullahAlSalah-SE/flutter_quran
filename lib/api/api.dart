part of '../imports/app_imports.dart';

class Api extends ApiHandle {
  final int timeOut = 100;

  @override
  Future<ModelSurahList?> getSurah(BuildContext context) async {
    try {
      // * URL
      Uri url = Uri.parse(
          '${ApiKey.baseApi}${AppLang.currentLang(context)}${ApiKey.api_dekr_morning}');
      // * req get
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      ModelSurahList? dataModel;
      if (res.statusCode == 200) {
        // * success
        // * body  string convert Json (Map)
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelSurahList.fromJson(json);
      } else {
        dataModel = null;
        // throw 'no data fetch ';
        // * Error
        AppToast.toast(AppLangKey.errorFetchData);
      }
      return dataModel;
    } catch (error) {
      dev.log('error Fetch Data Social',
          name: 'Api Social', error: error.toString());
    }
    return null;
  }

  @override
  Future getDekr(BuildContext context) async {
    try {
      // * URL
      Uri url = Uri.parse('${ApiKey.baseApi_dekr}${ApiKey.api_dekr_morning}');
      // * req get
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      ModelSurahList? dataModel;
      if (res.statusCode == 200) {
        // * success
        // * body  string convert Json (Map)
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelSurahList.fromJson(json);
      } else {
        dataModel = null;
        // throw 'no data fetch ';
        // * Error
        AppToast.toast(AppLangKey.errorFetchData);
      }
      return dataModel;
    } catch (error) {
      dev.log('error Fetch Data Social',
          name: 'Api Social', error: error.toString());
    }
    return null;
  }
}
