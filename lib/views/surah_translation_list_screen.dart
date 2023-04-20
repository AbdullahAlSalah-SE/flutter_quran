part of '../imports/app_imports.dart';

class Sursh_translation_list_page extends StatefulWidget {
  const Sursh_translation_list_page({super.key});
  static const routename = '/Surah_translationlist';

  @override
  State<Sursh_translation_list_page> createState() =>
      _Sursh_translation_list_pageState();
}

class _Sursh_translation_list_pageState
    extends State<Sursh_translation_list_page> {
  // ApiHandle apiHandle = ApiHandle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLangKey.contents.tr()),
      ),
      body: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppTheme.isDark(context)
                  ? app_images.Godnames_page_background_02
                  : app_images.Godnames_page_background_04),
              fit: BoxFit.fill,
            ),
          ),
          height: MediaQuery.of(context).size.height,

          // height: double.infinity,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: 114,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppTheme.isDark(context)
                        ? app_images.islamic_banner_02
                        : app_images.islamic_banner_03),
                    fit: BoxFit.fill,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Surah_translation_screen.routename,
                        arguments: {
                          // 'get_verse_ar': quran.getVerse(index + 1, index + 1),
                          // 'get_verse_eng':quran.getVerseTranslation(index + 1, index + 1),
                          'get_item_num': index + 1,
                          'getVerseCount': quran.getVerseCount,
                          'title': AppLang.isAr(context)
                              ? quran.getSurahNameArabic(index + 1)
                              : quran.getSurahName(index + 1),
                        });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(left: AppDime.lg, right: AppDime.xlg),
                    child: ListTile(
                      title: Text(
                        // quran.getVerse(18, index + 1, verseEndSymbol: true),
                        AppLang.isAr(context)
                            ? quran.getSurahNameArabic(index + 1)
                            : quran.getSurahName(index + 1),
                        textAlign: AppLang.isAr(context)
                            ? TextAlign.right
                            : TextAlign.left,

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        AppLang.isAr(context)
                            ? quran.getPlaceOfRevelation_ar(index + 1)
                            : quran.getPlaceOfRevelation(index + 1),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        (quran.getVerseEndSymbol(index + 1)),
                        style: TextStyle(
                            fontFamily: GoogleFonts.italiana().fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: AppDime.lg_1),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
