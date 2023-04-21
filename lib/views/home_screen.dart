part of '../imports/app_imports.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});
  static const routename = '/Home';

  @override
  Widget build(BuildContext context) {
    int cards_counter = 0;
    List<int> list = [1, 2, 3, 4, 5, 6, 7];

    return Scaffold(
      drawer: const drawer_Body(),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            //"القرآن",
            AppLangKey.main_page.tr(),
          )),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: [
            Container(
                child: Column(
              children: [
                const SizedBox(height: 10),
                CarouselSlider(
                  options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: list
                      .map(
                        (item) => Card_home(
                          title: AppLangKey.supplications_that_are_said.tr(),
                          image_path: home_screen_hadith_card[cards_counter]
                              ['hadddith_card_image'],
                          text_info: AppLang.isAr(context)
                              ? home_screen_hadith_card[cards_counter]['hadith']
                              : home_screen_hadith_card[cards_counter]
                                  ['hadith_eng'],
                          ref_text: AppLang.isAr(context)
                              ? home_screen_hadith_card[cards_counter++]
                                  ['hadith_Refrance']
                              : home_screen_hadith_card[cards_counter++]
                                  ['hadith_eng_ref'],

                          // Text(()),
                        ),
                      )
                      .toList(),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: AppTheme.isDark(context)
                          ? AppColors.bgWhite
                          : AppColors.bgBlack),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Sunan_page.routename);
                                  },
                                  icon: AppTheme.isDark(context)
                                      ? AppSvg.islam_symbol02
                                      : AppSvg.islam_symbol01),
                              Text(AppLangKey.confom_sunnah.tr()),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Prayer_bead_page.routename);
                                  },
                                  icon: AppTheme.isDark(context)
                                      ? AppSvg.prayer_beads02
                                      : AppSvg.prayer_beads),
                              Text(AppLangKey.prayerbead_01.tr()),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Sursh_list_page.routename);
                                  },
                                  icon: AppTheme.isDark(context)
                                      ? AppSvg.audio_btn_darkmod
                                      : AppSvg.audio_btn_lightmod),
                              Text(AppLangKey.recitation.tr()),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Quran_page.routename);
                                  },
                                  icon: AppTheme.isDark(context)
                                      ? AppSvg.quranbtn_darkmode
                                      : AppSvg.quran_btn),
                              Text(AppLangKey.qurankarem.tr())
                            ],
                          )
                        ],
                      ),
                      DefaultTextStyle(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: AppTheme.isDark(context)
                                ? AppColors.bgWhite
                                : AppColors.bgBlack),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context, Ahadith_items_list.routename,

                                        // context, Hadith_home_page.routename,
                                        // arguments: {
                                        //   'hadith_url_path': "001.mp3",
                                        //   'hadith_title_txt': "ABDULLAH"
                                        // }
                                      );
                                    },
                                    icon: AppTheme.isDark(context)
                                        ? AppSvg.hadith_btn_dark
                                        : AppSvg.hadith_btn_light),
                                Text(AppLangKey.ahadith.tr()),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Sursh_translation_list_page.routename,
                                      );
                                    },
                                    icon: AppTheme.isDark(context)
                                        ? AppSvg.translate_btn_darkmod
                                        : AppSvg.translate_btn_lightmod),
                                Text(AppLangKey.transltaion.tr()),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.all(AppDime.lg),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Remembrance_page.routename);
                                  },
                                  child: Text(
                                    AppLangKey.show_more.tr(),
                                    style: TextStyle(
                                        color: AppTheme.isDark(context)
                                            ? AppColors.bgWhite
                                            : AppColors.bgBlack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                Text(
                                  AppLangKey.daily_remembrance.tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppDime.lg),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                remembrance_card(
                                  textcolor_value: AppTheme.isDark(context)
                                      ? AppColors.bgBlack
                                      : AppColors.bgWhite,
                                  image_path: app_images.night_moon,
                                  urlpath: ApiKey.api_dekr_night,
                                  color_placeholder: AppTheme.isDark(context)
                                      ? AppColors.bgGold
                                      : AppColors.orange,
                                  remember_text:
                                      AppLangKey.evening_remembrances.tr(),
                                ),
                                remembrance_card(
                                  textcolor_value: AppColors.bgWhite,
                                  image_path: app_images.morning,
                                  color_placeholder: AppTheme.isDark(context)
                                      ? AppColors.bgCursor
                                      : AppColors.bgBlue,
                                  remember_text:
                                      AppLangKey.morning_remembrance.tr(),
                                  urlpath: ApiKey.api_dekr_morning,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                remembrance_card(
                                  textcolor_value: AppColors.bgWhite,
                                  image_path: app_images.sleeping_moon,
                                  color_placeholder: AppTheme.isDark(context)
                                      ? AppColors.bgCursor
                                      : AppColors.bgCursor,
                                  remember_text:
                                      AppLangKey.sleep_remembrances.tr(),
                                  urlpath: ApiKey.api_dekr_bf_sleep,
                                ),
                                remembrance_card(
                                  textcolor_value: AppTheme.isDark(context)
                                      ? AppColors.bgBlack
                                      : AppColors.bgWhite,
                                  image_path: app_images.cloak_01rememeber,
                                  color_placeholder: AppTheme.isDark(context)
                                      ? AppColors.bgGold
                                      : AppColors.lightLoading,
                                  remember_text:
                                      AppLangKey.wake_up_remembrances.tr(),
                                  urlpath: ApiKey.api_dekr_waking_up,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Names_page.routename,
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                    ),
                    elevation: AppDime.md,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        alignment: AppLang.isAr(context)
                            ? Alignment.topRight
                            : Alignment.topLeft,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: AppDime.lg_1),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width - 100,
                            child: Image(
                                image: AssetImage(AppTheme.isDark(context)
                                    ? app_images.God_names
                                    : app_images.God_names02)),
                          ),
                          Text(AppLangKey.the_names_of_Allah.tr(),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
