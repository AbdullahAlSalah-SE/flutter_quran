part of '../../imports/app_imports.dart';

class AppLang {
//* current lang
  static String currentLang(BuildContext context) =>
      context.locale.languageCode;

//* check is arabic
  static bool isAr(BuildContext context) =>
      context.locale == AppLangConfig.arLocale;

//* set locale
  static void setlang(BuildContext context, Locale locale) async =>
      await context.setLocale(locale);
  // * get current locale
  static Locale currentLangLocale(BuildContext context, String? lang) =>
      lang == ken ? AppLangConfig.enLocale : AppLangConfig.arLocale;
//* return current language title
//
  static String current_lang(
    BuildContext context,
  ) =>
      currentLang(context) == ken ? AppLangKey.english : AppLangKey.arabic;
}
