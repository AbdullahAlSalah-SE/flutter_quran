part of '../imports/app_imports.dart';

class Hadith_home_page extends StatefulWidget {
  const Hadith_home_page({
    Key? key,
  }) : super(key: key);

  static const routename = '/hadith_home_item';

  @override
  State<Hadith_home_page> createState() => _Hadith_home_pageState();
}

class _Hadith_home_pageState extends State<Hadith_home_page> {
  int currentIndex = 0;

  Hadith hadith_item = Hadith();
  // List<Widget> pages;
  String? hadith_nameHadith = 'okok';
  String? hadith_explanationHadith;
  String? hadith_textHadith;
  String? hadith_narratorHadith;
  String? hadith_audiofilename;

  List<Widget>? pages;
  @override
  void initState() {
    // readarg();
    scheduleMicrotask(
      () {
        final arg = ModalRoute.of(context)!.settings.arguments as Map;
        hadith_item = arg['hadith_item'];
        hadith_nameHadith = hadith_item.nameHadith;
        hadith_explanationHadith = hadith_item.explanationHadith;
        hadith_textHadith = hadith_item.textHadith;
        hadith_narratorHadith = hadith_item.translateNarrator;
        hadith_audiofilename = hadith_item.audioHadith;
        pages = [
          // const Hadith_item_audio_screen(),

          Hadith_tafser_screen(
            hadith_titlle: hadith_nameHadith,
            explanationHadith: hadith_explanationHadith,
          ),
          Hadith_screen(
              hadith_titlle: hadith_nameHadith, hadith_text: hadith_textHadith),
          Hadith_narrator_screen(
            hadith_titlle: hadith_nameHadith,
            narratorHadith: hadith_narratorHadith,
          ),
          Hadith_item_audio_screen(mp3file_path: hadith_audiofilename),
        ];
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future(
          () => () {
            final arg = ModalRoute.of(context)!.settings.arguments as Map;

            hadith_item = arg['hadith_item'];

            hadith_nameHadith = hadith_item.nameHadith;
            hadith_explanationHadith = hadith_item.textHadith;

            // pages = [
            //   // const Hadith_item_audio_screen(),
            //   Hadith_screen(hadith_titlle: 'k'),
            //   Hadith_tafser_screen(hadith_titlle: hadith_nameHadith),
            // ];
          },
        ),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return DefaultTabController(
              length: 5,
              child: Scaffold(
                // appBar: AppBar(
                //     title: Text('${hadith_nameHadith}'),
                //     leading: BackButton(
                //       onPressed: () {
                //         Navigator.pop(context);
                //       },
                //     )),
                // drawer: const drawer_Body(),
                body: pages?.elementAt(currentIndex),
                bottomNavigationBar: Wrap(
                  children: [
                    ConvexAppBar(
                      height: 55,
                      backgroundColor: AppColors.bgBlack,
                      items: [
                        TabItem(
                            icon: AppTheme.isDark(context)
                                ? AppSvg.explanation02
                                : AppSvg.explanation,
                            title: AppLangKey.explanation.tr()),
                        TabItem(
                          icon: AppTheme.isDark(context)
                              ? AppSvg.hadith_btn_dark
                              : AppSvg.hadith_btn_light,
                          title: AppLangKey.hadith.tr(),
                        ),
                        TabItem(
                          icon: Icons.man,
                          title: AppLangKey.narrator.tr(),
                        ),
                        TabItem(
                            icon: AppTheme.isDark(context)
                                ? AppSvg.audio_btn_darkmod
                                : AppSvg.audio_btn_lightmod,
                            title: AppLangKey.listin.tr()),
                      ],
                      onTap: (int i) {
                        print('click index=$i');
                        changeSelected(i);
                      },
                    ),
                  ],
                ),
              ));
        });
    // );
  }

  void changeSelected(index) {
    currentIndex = index;
    setState(() {
      currentIndex:
      currentIndex;
    });
  }
}
