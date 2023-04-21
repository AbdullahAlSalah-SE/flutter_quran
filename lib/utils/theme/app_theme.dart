part of '../../imports/app_imports.dart';

class AppTheme {
  // * headline1
  static TextStyle? h1(BuildContext context) =>
      Theme.of(context).textTheme.headline1;
  // * headline2
  static TextStyle? h2(BuildContext context) =>
      Theme.of(context).textTheme.headline2;
  // * headline3
  static TextStyle? h3(BuildContext context) =>
      Theme.of(context).textTheme.headline3;
  // * headline4
  static TextStyle? h4(BuildContext context) =>
      Theme.of(context).textTheme.headline4;
  // * headline5
  static TextStyle? h5(BuildContext context) =>
      Theme.of(context).textTheme.headline5;
  // * headline6
  static TextStyle? h6(BuildContext context) =>
      Theme.of(context).textTheme.headline6;
  // * bodyText1
  static TextStyle? b1(BuildContext context) =>
      Theme.of(context).textTheme.bodyText1;
  // * bodyText2
  static TextStyle? b2(BuildContext context) =>
      Theme.of(context).textTheme.bodyText2;
  // * subtitle1
  static TextStyle? s1(BuildContext context) =>
      Theme.of(context).textTheme.subtitle1;
  // * subtitle2
  static TextStyle? s2(BuildContext context) =>
      Theme.of(context).textTheme.subtitle2;
  // * caption
  static TextStyle? cap(BuildContext context) =>
      Theme.of(context).textTheme.caption;
  // * button
  static TextStyle? btn(BuildContext context) =>
      Theme.of(context).textTheme.button;

// * check isDark
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  // // * current theme text
  // static String themeState(BuildContext context) =>
  //     isDark(context) ? AppLangKey.dark : AppLangKey.light;
}

RichText _convertHadith(BuildContext context, String text) {
  text = text.replaceAll('(', '{');
  text = text.replaceAll(')', '}');

  List<String> split = text.split(RegExp("{"));

  List<String> hadiths = split.getRange(1, split.length).fold([], (t, e) {
    var texts = e.split("}");

    if (texts.length > 1) {
      return List.from(t)
        ..addAll(
            ["{${texts.first}}", "${e.substring(texts.first.length + 1)}"]);
    }
    return List.from(t)..add("{${texts.first}");
  });

  return RichText(
    textAlign: TextAlign.right,
    text: TextSpan(
      style: TextStyle(fontSize: 20, color: AppColors.bgWhite),
      //style: DefaultTextStyle.of(context).style,
      children: [TextSpan(text: split.first)]..addAll(hadiths
          .map((text) => text.contains("{")
              ? TextSpan(
                  text: text,
                  style: TextStyle(
                      color: AppTheme.isDark(context)
                          ? AppColors.bgGold
                          : AppColors.bgBlue,
                      fontWeight: FontWeight.bold))
              : TextSpan(text: text))
          .toList()),
    ),
    textDirection: TextDirection.rtl,
  );
}
