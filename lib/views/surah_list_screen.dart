part of '../imports/app_imports.dart';

class Sursh_list_page extends StatefulWidget {
  const Sursh_list_page({super.key});
  static const routename = '/SurahP';

  @override
  State<Sursh_list_page> createState() => _Sursh_list_pageState();
}

class _Sursh_list_pageState extends State<Sursh_list_page> {
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
                    Navigator.pushNamed(context, Tafser_page.routename,
                        arguments: {
                          'url_path': audio_mp3_number[index + 1]
                              ['audio_number'],
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

    // DefaultTabController(
    //     length: surah.length,
    //     initialIndex: 0,
    //     child: SafeArea(
    //         child: Scaffold(
    //       appBar: AppBar(),
    //       body: TabBarView(children: <Widget>[
    //         FutureBuilder(
    //             // future: ApiHandle.getSurah,
    //             builder: (BuildContext context,
    //                 AsyncSnapshot<List<Surah_amane>> snapshot) {
    //           if (snapshot.hasData) {
    //             List<Surah_amane>? surah = snapshot.data;
    //             return ListView.builder(
    //               itemCount: surah!.length,
    //               itemBuilder: (context, index) => SurahCustomListTile(
    //                   surah: surah[index], context: context, ontap: () {}),
    //             );
    //           }
    //           return Center(
    //             child: CircularProgressIndicator(),
    //           );
    //         })
    //       ]),
    //     ))

    //     );
  }
}
