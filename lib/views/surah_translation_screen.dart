part of '../imports/app_imports.dart';

class Surah_translation_screen extends StatelessWidget {
  const Surah_translation_screen({super.key});
  static const routename = '/Surah_translation';

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    // print(arguments['exampleArgument']);

    return Scaffold(
        appBar: AppBar(
          title: Text('${arguments['title']}'),
        ),
        body: FutureBuilder(
            future: Future(
              () => () {
                final arguments = (ModalRoute.of(context)?.settings.arguments ??
                    <String, dynamic>{}) as Map;
              },
            ),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Container(
                  padding: EdgeInsets.fromLTRB(
                      AppDime.md, AppDime.xlg, AppDime.md, 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AppTheme.isDark(context)
                              ? app_images.Godnames_page_background_01
                              : app_images.Godnames_page_background_04))),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(AppDime.md)),
                    padding: EdgeInsets.fromLTRB(AppDime.md, 0, AppDime.md, 0),
                    child: DefaultTextStyle(
                        style: TextStyle(
                          color: AppColors.bgWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: AppDime.lg,
                        ),
                        child: ListView.builder(
                          itemCount:
                              quran.getVerseCount(arguments['get_item_num']),
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  quran.getVerse(
                                      arguments['get_item_num'], index + 1,
                                      verseEndSymbol: true),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  height: AppDime.md,
                                ),
                                Text(
                                    quran.getVerseTranslation(
                                        arguments['get_item_num'], index + 1,
                                        verseEndSymbol: false),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: AppTheme.isDark(context)
                                            ? AppColors.quran_gold
                                            : AppColors.bgBlue,
                                        backgroundColor:
                                            AppTheme.isDark(context)
                                                ? AppColors.bgBlack
                                                : AppColors.bgWhite)),
                                SizedBox(
                                  height: AppDime.xlg,
                                )
                              ],
                            );
                          },
                        )
                        // ],
                        // ),
                        ),
                  ));
            }));
  }
}
