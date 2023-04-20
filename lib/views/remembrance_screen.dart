part of '../imports/app_imports.dart';

class Remembrance_page extends StatelessWidget {
  const Remembrance_page({super.key});
  static const routename = '/Remembrance_p';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLangKey.daily_remembrance.tr(),
        ),
        actions: [IconButton(onPressed: () {}, icon: AppSvg.islam_symbol02)],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(AppDime.lg),
          child: Column(
            children: [
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_waking_up,
                  color_placeholder: AppColors.blueDetailsBG,
                  remember_text: AppLangKey.wake_up_remembrances.tr(),
                  image_path: app_images.cloak_01rememeber),
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_morning,
                  color_placeholder: AppColors.bgBlue,
                  remember_text: AppLangKey.morning_remembrance.tr(),
                  image_path: app_images.morning),
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_after_pray,
                  color_placeholder: AppColors.bgGreen_2,
                  remember_text: AppLangKey.after_prayer_remembrances.tr(),
                  image_path: app_images.hadith_slider02),
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_mosque,
                  color_placeholder: AppColors.bgGreen,
                  remember_text: AppLangKey.remembrance_of_the_mosque.tr(),
                  image_path: app_images.mosque_golden),
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_night,
                  color_placeholder: AppColors.orange,
                  remember_text: AppLangKey.evening_remembrances.tr(),
                  image_path: app_images.night_moon),
              remembrance_l_card(
                  urlpath: ApiKey.api_dekr_bf_sleep,
                  color_placeholder: AppColors.bgCursor,
                  remember_text: AppLangKey.sleep_remembrances.tr(),
                  image_path: app_images.sleeping_rememmbernce),
              remembrance_l_card(
                  color_placeholder: AppColors.bgGrey,
                  urlpath: ApiKey.api_dekr_after_pray,
                  remember_text: AppLangKey.praises_remembrances.tr(),
                  image_path: app_images.muslim_prasis),
              remembrance_l_card(
                  color_placeholder: AppColors.bgDark,
                  urlpath: ApiKey.api_dekr_prophets,
                  remember_text: AppLangKey.prophets_supplications.tr(),
                  image_path: app_images.muhammad_gold),
              remembrance_l_card(
                  color_placeholder: AppColors.quran_Dark_blue,
                  urlpath: ApiKey.api_dekr_quran,
                  remember_text: AppLangKey.quranic_supplications.tr(),
                  image_path: app_images.quran_remembrance),
            ],
          ),
        ),
      ),
    );
  }
}
