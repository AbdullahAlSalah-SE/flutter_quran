part of '../../imports/app_imports.dart';

class ArabicSuraNumber extends StatelessWidget {
  const ArabicSuraNumber({Key? key, required this.i}) : super(key: key);
  final int i;
  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E" + (i + 1).toString().toArabicNumbers + "\uFD3F",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: AppTheme.isDark(context)
              ? AppColors.quran_gold
              : AppColors.bgBlack,
          fontFamily: 'me_quran',
          fontSize: 20,
          shadows: [
            Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: AppTheme.isDark(context)
                  ? AppColors.bgWhite
                  : AppColors.bgBlue,
            ), // Shadow
          ]),
    ); // TextStyle, Text
  }
}
