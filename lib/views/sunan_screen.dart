part of '../imports/app_imports.dart';

class Sunan_page extends StatelessWidget {
  static const routename = '/Sunan_p';

  const Sunan_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLangKey.confom_sunnah.tr()),

          // actions: [Icon(Icons.abc)],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppTheme.isDark(context)
                    ? app_images.Godnames_page_background_02
                    : app_images.Godnames_page_background_04),
                fit: BoxFit.cover),
          ),
          // padding: EdgeInsets.symmetric(horizontal: 5, vertical: AppDime.xlg),
          child: DefaultTextStyle(
            style: TextStyle(
                fontSize: AppDime.lg,
                color: AppTheme.isDark(context)
                    ? AppColors.bgBlack
                    : AppColors.bgWhite,
                fontWeight: FontWeight.bold,
                background: Paint()
                  ..strokeWidth = 30.0
                  ..color = AppTheme.isDark(context)
                      ? AppColors.quran_gold
                      : AppColors.quran_Dark_blue
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
            child: Container(
                color: Colors.black54,
                child: Center(
                  child: Column(
                    children: [
                      Text(''),
                      SizedBox(
                        height: AppDime.xxlg,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(AppLangKey.before.tr()),
                            Text(AppLangKey.after.tr())
                          ]),
                      SizedBox(
                        height: AppDime.xxlg,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [
                              Text(AppLangKey.two_rakah.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.two_rakah.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.nothing.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.nothing.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.nothing.tr()),
                            ]),
                            Column(children: [
                              Text(AppLangKey.morning_prayer.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.noon_prayer.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.after_noon_prayer.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.sunset_prayer.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.night_prayer.tr()),
                            ]),
                            Column(children: [
                              Text(AppLangKey.nothing.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.two_rakah.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.nothing.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.two_rakah.tr()),
                              SizedBox(
                                height: AppDime.xlg,
                              ),
                              Text(AppLangKey.two_rakah.tr()),
                            ]),
                          ])
                    ],
                  ),
                )

                // Table(
                //   // textDirection: TextDirection.ltr,

                //   columnWidths: {
                //     0: FractionColumnWidth(0.20),
                //     1: FractionColumnWidth(0.15),
                //     2: FractionColumnWidth(0.15),
                //     3: FractionColumnWidth(0.15),
                //     4: FractionColumnWidth(0.15),
                //     5: FractionColumnWidth(0.20),
                //   },
                //   // textDirection: TextDirection.ltr,

                //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                //   border: TableBorder.all(
                //       width: 2.0,
                //       color: AppColors.bgBlack,
                //       style: BorderStyle.solid),
                //   children: [
                //     TableRow(children: [
                //       Text(AppLangKey.obligatory_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       // Text("Winners", textScaleFactor: 0.9,textAlign: TextAlign.center),
                //       Text(
                //         AppLangKey.certain_bi.tr(),
                //         textScaleFactor: 0.9,
                //         textAlign: TextAlign.center,
                //       ),
                //       Text(AppLangKey.certain_ai.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.desirable_bi.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.desirable_ai.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.the_total.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.morning_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.noon_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.four_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.eight_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.after_noon_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.four_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.four_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.sunset_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.four_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.night_prayer.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.nothing.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.four_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //     TableRow(children: [
                //       Text(AppLangKey.the_total.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.six_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.six_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.eight_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //       Text(AppLangKey.twenty_two_rakah.tr(),
                //           textScaleFactor: 0.9, textAlign: TextAlign.center),
                //     ]),
                //   ],
                // ),
                ),
          ),
        ));
  }
}
