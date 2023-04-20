// import 'dart:js';

// import 'dart:html';
// import 'dart:html';
import 'dart:async';
// import 'dart:ffi';
import 'dart:io' show Platform;
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran/utils/lang/app_ar_numbers.dart';
import 'package:flutter_quran/utils/lang/app_lang_key.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as dev;
import 'package:provider/provider.dart';
import 'package:quran/surah_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:lamsz_quran_api/lamsz_quran_api.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:quran/quran.dart' as quran;
import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart' as localized;
import 'package:flutter/src/material/dropdown.dart';

//*data
import '../data/data.dart';
part '../data/hadith_data.dart';

//*api
part '../api/api_key.dart';
part '../api/api.dart';
part '../api/api_handle.dart';

//*model
part '../model/model_surah.dart';
part '../model/model_surah_list.dart';
part '../model/model_name_mode.dart';
part '../model/hadithe.dart';
//*lang
part '../utils/lang/app_lang.dart';
part '../utils/lang/app_lang_config.dart';

// import 'dart:js';
//*mange state
part '../manage-state/manage_theme.dart';

//*utils
part '../utils/constant/app_images.dart';
part '../views/splash_screen.dart';
part '../dime/app_dime.dart';
part '../utils/svg/app_svg.dart';
part '../utils/constant/app_icons.dart';
part '../utils/routes/app_routes.dart';
part '../utils/restart/app_restart.dart';
part '../utils/theme/app_theme_choose.dart';
part '../utils/theme/app_colors.dart';
part '../utils/theme/app_theme.dart';
part '../utils/constant/app_lists.dart';
part '../utils/lang/app_ar_num_convert.dart';
part '../views/quran/app_chapter_builder.dart';

//*widgets
part '../views/home/widgets/drwaer_costume/drawer_body.dart';
part '../views/home/widgets/drwaer_costume/profile/drawer_profile.dart';
part '../views/home/widgets/drwaer_costume/settings/drawer_settings.dart';
part '../views/home/widgets/drwaer_costume/settings/lang/drawer_lang.dart';
part '../views/home/widgets/drwaer_costume/settings/drawer_design_settings.dart';
part '../views/home/widgets/drwaer_costume/settings/theme/drawe_theme.dart';
part '../views/quran/widgets/fonts_settings/fonts_Settings.dart';
part '../views/home/widgets/remembrance_card/remembrance_card.dart';
part '../views/prayer_bead_screen.dart';
part '../views/home/widgets/Slider/custom_card.dart';
part '../views/remembrance/widget/remembrance_long_card.dart';
part '../widget/toast/toast.dart';
part '../views/surah/widget/surah_custem_tile.dart';
part '../views/names widget/names_details.dart';

//* views
part '../main_app.dart';
part '../views/home_screen.dart';
part '../views/quran_screen.dart';
part '../views/remembrance_screen.dart';
part '../views/surash_audio_screen.dart';
part '../views/surah_list_screen.dart';
part '../views/remembrance/remembrance_screenlist.dart';
part '../views/names_screen.dart';
part '../views/sunan_screen.dart';

part '../views/hadith_items_list_screen.dart';

part '../views/hadith_item_audio_screen.dart';

part '../views/hadith_item_home_screen.dart';

part '../views/hadith_item_screen.dart';
part '../views/hadith_item_tafser_screen.dart';
part '../views/hadith_item_narrator_screen.dart';

part '../views/surah_translation_list_screen.dart';
part '../views/surah_translation_screen.dart';




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

