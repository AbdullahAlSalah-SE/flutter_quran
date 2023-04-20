part of '../../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    Splash_Page.routename: (context) => const Splash_Page(),
    Home_page.routename: (context) => const Home_page(),
    Quran_page.routename: (context) => const Quran_page(),
    Font_Settings.routename: (context) => const Font_Settings(),

    Prayer_bead_page.routename: (context) => const Prayer_bead_page(),
    Remembrance_page.routename: (context) => const Remembrance_page(),
    Tafser_page.routename: (context) => const Tafser_page(),
    Sursh_list_page.routename: (context) => const Sursh_list_page(),
    Sunan_page.routename: (context) => Sunan_page(),

    // Hadith_item_audio_screen.routename: (context) => Hadith_item_audio_screen(),

    Remembrance_list.routename: (context) => Remembrance_list(),
    Names_page.routename: (context) => Names_page(),
    Hadith_home_page.routename: (context) => Hadith_home_page(),
    Ahadith_items_list.routename: (context) => Ahadith_items_list(),

    Sursh_translation_list_page.routename: (context) =>
        const Sursh_translation_list_page(),

        Surah_translation_screen.routename: (context) =>
        const Surah_translation_screen(),

    // Books_Page.routename: ((context) => const Books_Page()),
    // Book_Screen.routename: ((context) => const Book_Screen()),
    // Webview_screen.routename: ((context) => const Webview_screen(
    //       url_sarp: '',
    //     )),
    // DetailPage.routename: ((context) => DetailPage()),
  };
}
