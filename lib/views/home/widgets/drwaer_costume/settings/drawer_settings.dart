part of '../../../../../imports/app_imports.dart';

class Settings_Drawer extends StatelessWidget {
  const Settings_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* my app
        AppDime.lg.verticalSpace,

        //*Theme
        DrawerDesignSettings(
          onTap: () {
            print('object');
          },
          title: AppLangKey.dark_mod.tr(),
          svg_icon:
              AppTheme.isDark(context) ? AppSvg.dark_theme : AppSvg.light_theme,
          trailing: DrawerTheme(),
        ),

        DrawerDesignSettings(
          title: AppLangKey.language.tr(),
          svg_icon: AppTheme.isDark(context) ? AppSvg.lang_dark : AppSvg.lang,
          trailing: Drawer_Lang(),
        ),

        // DrawerDesignSettings(
        //   title: AppLangKey.about_Theapp.tr(),
        //   svg_icon: AppSvg.exclamation_mark,
        //   // trailing: Drawer_Lang(),
        // ),

        // //*font settings
        // ListTile(
        //   onTap: () {
        //     Navigator.pop(context);
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const Font_Settings()));
        //   },
        //   title: Text(AppLangKey.font_settings),
        //   leading: AppTheme.isDark(context)
        //       ? AppSvg.fonts_settings
        //       : AppSvg.dark_settings,
        // ),

        // //* terms
        // DrawerDesignSettings(
        //     title: AppLangKey.terms.tr(), svg_icon: AppSvg.terms),

        //*rate us
        ListTile(
          title: Text(AppLangKey.rate_theapp.tr()),
          leading: AppSvg.rateus,
          onTap: () async {
            if (!await launchUrl(quranAppurl,
                mode: LaunchMode.externalApplication)) {
              throw 'Could not launch $quranAppurl';
            }
          },
        ),
      ],
    );
  }
}
