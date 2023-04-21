part of '../../imports/app_imports.dart';

int bookmarkedAyah = 1;
int bookmarkedSura = 1;
bool fabIsClicked = true;

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();

String arabicFont = 'quran';
double arabicFontSize = 28;
double mushafFontSize = 40;

Uri quranAppurl = Uri.parse('https://github.com/itsherifahmed');

Future saveSettings() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('arabicFontSize', arabicFontSize.toInt());
  await prefs.setInt('mushafFontSize', mushafFontSize.toInt());
}

Future getSettings() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    arabicFontSize = await prefs.getInt('arabicFontSize')!.toDouble();
    mushafFontSize = await prefs.getInt('mushafFontSize')!.toDouble();
  } catch (_) {
    arabicFontSize = 28;
    mushafFontSize = 40;
  }
}

saveBookMark(surah, ayah) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt("surah", surah);
  await prefs.setInt("ayah", ayah);
}

readBookmark() async {
  print("read book mark called");
  final prefs = await SharedPreferences.getInstance();
  try {
    bookmarkedAyah = prefs.getInt('ayah')!;
    bookmarkedSura = prefs.getInt('surah')!;
    return true;
  } catch (e) {
    return false;
  }
}

List<Map> arabicName = [
  {"surah": "1", "name": "الفاتحة"},
  {"surah": "2", "name": "البقرة"},
  {"surah": "3", "name": "آل عمران"},
  {"surah": "4", "name": "النساء"},
  {"surah": "5", "name": "المائدة"},
  {"surah": "6", "name": "الأنعام"},
  {"surah": "7", "name": "الأعراف"},
  {"surah": "8", "name": "الأنفال"},
  {"surah": "9", "name": "التوبة"},
  {"surah": "10", "name": "يونس"},
  {"surah": "11", "name": "هود"},
  {"surah": "12", "name": "يوسف"},
  {"surah": "13", "name": "الرعد"},
  {"surah": "14", "name": "ابراهيم"},
  {"surah": "15", "name": "الحجر"},
  {"surah": "16", "name": "النحل"},
  {"surah": "17", "name": "الإسراء"},
  {"surah": "18", "name": "الكهف"},
  {"surah": "19", "name": "مريم"},
  {"surah": "20", "name": "طه"},
  {"surah": "21", "name": "الأنبياء"},
  {"surah": "22", "name": "الحج"},
  {"surah": "23", "name": "المؤمنون"},
  {"surah": "24", "name": "النور"},
  {"surah": "25", "name": "الفرقان"},
  {"surah": "26", "name": "الشعراء"},
  {"surah": "27", "name": "النمل"},
  {"surah": "28", "name": "القصص"},
  {"surah": "29", "name": "العنكبوت"},
  {"surah": "30", "name": "الروم"},
  {"surah": "31", "name": "لقمان"},
  {"surah": "32", "name": "السجدة"},
  {"surah": "33", "name": "الأحزاب"},
  {"surah": "34", "name": "سبإ"},
  {"surah": "35", "name": "فاطر"},
  {"surah": "36", "name": "يس"},
  {"surah": "37", "name": "الصافات"},
  {"surah": "38", "name": "ص"},
  {"surah": "39", "name": "الزمر"},
  {"surah": "40", "name": "غافر"},
  {"surah": "41", "name": "فصلت"},
  {"surah": "42", "name": "الشورى"},
  {"surah": "43", "name": "الزخرف"},
  {"surah": "44", "name": "الدخان"},
  {"surah": "45", "name": "الجاثية"},
  {"surah": "46", "name": "الأحقاف"},
  {"surah": "47", "name": "محمد"},
  {"surah": "48", "name": "الفتح"},
  {"surah": "49", "name": "الحجرات"},
  {"surah": "50", "name": "ق"},
  {"surah": "51", "name": "الذاريات"},
  {"surah": "52", "name": "الطور"},
  {"surah": "53", "name": "النجم"},
  {"surah": "54", "name": "القمر"},
  {"surah": "55", "name": "الرحمن"},
  {"surah": "56", "name": "الواقعة"},
  {"surah": "57", "name": "الحديد"},
  {"surah": "58", "name": "المجادلة"},
  {"surah": "59", "name": "الحشر"},
  {"surah": "60", "name": "الممتحنة"},
  {"surah": "61", "name": "الصف"},
  {"surah": "62", "name": "الجمعة"},
  {"surah": "63", "name": "المنافقون"},
  {"surah": "64", "name": "التغابن"},
  {"surah": "65", "name": "الطلاق"},
  {"surah": "66", "name": "التحريم"},
  {"surah": "67", "name": "الملك"},
  {"surah": "68", "name": "القلم"},
  {"surah": "69", "name": "الحاقة"},
  {"surah": "70", "name": "المعارج"},
  {"surah": "71", "name": "نوح"},
  {"surah": "72", "name": "الجن"},
  {"surah": "73", "name": "المزمل"},
  {"surah": "74", "name": "المدثر"},
  {"surah": "75", "name": "القيامة"},
  {"surah": "76", "name": "الانسان"},
  {"surah": "77", "name": "المرسلات"},
  {"surah": "78", "name": "النبإ"},
  {"surah": "79", "name": "النازعات"},
  {"surah": "80", "name": "عبس"},
  {"surah": "81", "name": "التكوير"},
  {"surah": "82", "name": "الإنفطار"},
  {"surah": "83", "name": "المطففين"},
  {"surah": "84", "name": "الإنشقاق"},
  {"surah": "85", "name": "البروج"},
  {"surah": "86", "name": "الطارق"},
  {"surah": "87", "name": "الأعلى"},
  {"surah": "88", "name": "الغاشية"},
  {"surah": "89", "name": "الفجر"},
  {"surah": "90", "name": "البلد"},
  {"surah": "91", "name": "الشمس"},
  {"surah": "92", "name": "الليل"},
  {"surah": "93", "name": "الضحى"},
  {"surah": "94", "name": "الشرح"},
  {"surah": "95", "name": "التين"},
  {"surah": "96", "name": "العلق"},
  {"surah": "97", "name": "القدر"},
  {"surah": "98", "name": "البينة"},
  {"surah": "99", "name": "الزلزلة"},
  {"surah": "100", "name": "العاديات"},
  {"surah": "101", "name": "القارعة"},
  {"surah": "102", "name": "التكاثر"},
  {"surah": "103", "name": "العصر"},
  {"surah": "104", "name": "الهمزة"},
  {"surah": "105", "name": "الفيل"},
  {"surah": "106", "name": "قريش"},
  {"surah": "107", "name": "الماعون"},
  {"surah": "108", "name": "الكوثر"},
  {"surah": "109", "name": "الكافرون"},
  {"surah": "110", "name": "النصر"},
  {"surah": "111", "name": "المسد"},
  {"surah": "112", "name": "الإخلاص"},
  {"surah": "113", "name": "الفلق"},
  {"surah": "114", "name": "الناس"}
];

List<int> noOfVerses = [
  7,
  286,
  200,
  176,
  120,
  165,
  206,
  75,
  129,
  109,
  123,
  111,
  43,
  52,
  99,
  128,
  111,
  110,
  98,
  135,
  112,
  78,
  118,
  64,
  77,
  227,
  93,
  88,
  69,
  60,
  34,
  30,
  73,
  54,
  45,
  83,
  182,
  88,
  75,
  85,
  54,
  53,
  89,
  59,
  37,
  35,
  38,
  29,
  18,
  45,
  60,
  49,
  62,
  55,
  78,
  96,
  29,
  22,
  24,
  13,
  14,
  11,
  11,
  18,
  12,
  12,
  30,
  52,
  52,
  44,
  28,
  28,
  20,
  56,
  40,
  31,
  50,
  40,
  46,
  42,
  29,
  19,
  36,
  25,
  22,
  17,
  19,
  26,
  30,
  20,
  15,
  21,
  11,
  8,
  8,
  19,
  5,
  8,
  8,
  11,
  11,
  8,
  3,
  9,
  5,
  4,
  7,
  3,
  6,
  3,
  5,
  4,
  5,
  6
];

List<Map> audio_mp3_number = [
  {"audio_number": "000.mp3"},
  {"audio_number": "001.mp3"},
  {"audio_number": "002.mp3"},
  {"audio_number": "003.mp3"},
  {"audio_number": "004.mp3"},
  {"audio_number": "005.mp3"},
  {"audio_number": "006.mp3"},
  {"audio_number": "007.mp3"},
  {"audio_number": "008.mp3"},
  {"audio_number": "009.mp3"},
  {"audio_number": "010.mp3"},
  {"audio_number": "011.mp3"},
  {"audio_number": "012.mp3"},
  {"audio_number": "013.mp3"},
  {"audio_number": "014.mp3"},
  {"audio_number": "015.mp3"},
  {"audio_number": "016.mp3"},
  {"audio_number": "017.mp3"},
  {"audio_number": "018.mp3"},
  {"audio_number": "019.mp3"},
  {"audio_number": "020.mp3"},
  {"audio_number": "021.mp3"},
  {"audio_number": "022.mp3"},
  {"audio_number": "023.mp3"},
  {"audio_number": "024.mp3"},
  {"audio_number": "025.mp3"},
  {"audio_number": "026.mp3"},
  {"audio_number": "027.mp3"},
  {"audio_number": "028.mp3"},
  {"audio_number": "029.mp3"},
  {"audio_number": "030.mp3"},
  {"audio_number": "031.mp3"},
  {"audio_number": "032.mp3"},
  {"audio_number": "033.mp3"},
  {"audio_number": "034.mp3"},
  {"audio_number": "035.mp3"},
  {"audio_number": "036.mp3"},
  {"audio_number": "037.mp3"},
  {"audio_number": "038.mp3"},
  {"audio_number": "039.mp3"},
  {"audio_number": "040.mp3"},
  {"audio_number": "041.mp3"},
  {"audio_number": "042.mp3"},
  {"audio_number": "043.mp3"},
  {"audio_number": "044.mp3"},
  {"audio_number": "045.mp3"},
  {"audio_number": "046.mp3"},
  {"audio_number": "047.mp3"},
  {"audio_number": "048.mp3"},
  {"audio_number": "049.mp3"},
  {"audio_number": "050.mp3"},
  {"audio_number": "051.mp3"},
  {"audio_number": "052.mp3"},
  {"audio_number": "053.mp3"},
  {"audio_number": "054.mp3"},
  {"audio_number": "055.mp3"},
  {"audio_number": "056.mp3"},
  {"audio_number": "057.mp3"},
  {"audio_number": "058.mp3"},
  {"audio_number": "059.mp3"},
  {"audio_number": "060.mp3"},
  {"audio_number": "061.mp3"},
  {"audio_number": "062.mp3"},
  {"audio_number": "063.mp3"},
  {"audio_number": "064.mp3"},
  {"audio_number": "065.mp3"},
  {"audio_number": "066.mp3"},
  {"audio_number": "067.mp3"},
  {"audio_number": "068.mp3"},
  {"audio_number": "069.mp3"},
  {"audio_number": "070.mp3"},
  {"audio_number": "071.mp3"},
  {"audio_number": "072.mp3"},
  {"audio_number": "073.mp3"},
  {"audio_number": "074.mp3"},
  {"audio_number": "075.mp3"},
  {"audio_number": "076.mp3"},
  {"audio_number": "077.mp3"},
  {"audio_number": "078.mp3"},
  {"audio_number": "079.mp3"},
  {"audio_number": "080.mp3"},
  {"audio_number": "081.mp3"},
  {"audio_number": "082.mp3"},
  {"audio_number": "083.mp3"},
  {"audio_number": "084.mp3"},
  {"audio_number": "085.mp3"},
  {"audio_number": "086.mp3"},
  {"audio_number": "087.mp3"},
  {"audio_number": "088.mp3"},
  {"audio_number": "089.mp3"},
  {"audio_number": "090.mp3"},
  {"audio_number": "091.mp3"},
  {"audio_number": "092.mp3"},
  {"audio_number": "093.mp3"},
  {"audio_number": "094.mp3"},
  {"audio_number": "095.mp3"},
  {"audio_number": "096.mp3"},
  {"audio_number": "097.mp3"},
  {"audio_number": "098.mp3"},
  {"audio_number": "099.mp3"},
  {"audio_number": "100.mp3"},
  {"audio_number": "101.mp3"},
  {"audio_number": "102.mp3"},
  {"audio_number": "103.mp3"},
  {"audio_number": "104.mp3"},
  {"audio_number": "105.mp3"},
  {"audio_number": "106.mp3"},
  {"audio_number": "107.mp3"},
  {"audio_number": "108.mp3"},
  {"audio_number": "109.mp3"},
  {"audio_number": "110.mp3"},
  {"audio_number": "111.mp3"},
  {"audio_number": "112.mp3"},
  {"audio_number": "113.mp3"},
  {"audio_number": "114.mp3"},
];

List<Map> home_screen_hadith_card = [
  {
    "hadddith_card_image": app_images.hadith_slider,
    "hadith": "واذا سألك عبادي عني فاني قريب اجيب دعوة الداعي اذا دعاني",
    "hadith_eng":
        "And if My servants ask you about Me, I am near, answering the call of the supplicant if he calls on Me",
    "hadith_Refrance": "سورة البقرة",
    "hadith_eng_ref": "Surah - the Cow"
  },
  {
    "hadddith_card_image": app_images.hadith_slider02,
    "hadith": "ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار",
    "hadith_eng":
        "Our Lord, give us good in this world and good in the Hereafter, and save us from the punishment of the Fire.",
    "hadith_Refrance": "سورة البقرة",
    "hadith_eng_ref": "Surah - the Cow"
  },
  {
    "hadddith_card_image": app_images.hadith_slider03,
    "hadith":
        " اللهم رحمتك أرجو فلا تكلني إلى نفسي طرفة عين، وأصلح لي شأني كله لا إله إلا أنت",
    "hadith_eng":
        "O God, I hope for your mercy, so do not leave me to myself for the blink of an eye, and fix all my affairs for me, there is no god but You.",
    "hadith_Refrance": "صحيح الجامع",
    "hadith_eng_ref": "Sahih Al-Jami"
  },
  {
    "hadddith_card_image": app_images.hadith_slider04,
    "hadith":
        "اللَّهُمَّ آتِنَا في الدُّنْيَا حَسَنَةً وفي الآخِرَةِ حَسَنَةً، وَقِنَا عَذَابَ النَّارِ",
    "hadith_eng":
        "O Allah, give us good in this world and good in the Hereafter, and protect us from the punishment of the Fire.",
    "hadith_Refrance": "سورة البقرة",
    "hadith_eng_ref": "Surah - the Cow"
  },
  {
    "hadddith_card_image": app_images.hadith_slider05,
    "hadith":
        "اللَّهُمَّ إنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كَثِيرًا، ولَا يَغْفِرُ الذُّنُوبَ إلَّا أنْتَ، فَاغْفِرْ لي مِن عِندِكَ مَغْفِرَةً إنَّكَ أنْتَ الغَفُورُ الرَّحِيمُ",
    "hadith_eng":
        "O Allah, I have wronged myself a lot, and no one forgives sins except You, so forgive me from Yourself, for You are the Forgiving, the Merciful.",
    "hadith_Refrance": "صحيح البخاري",
    "hadith_eng_ref": "Sahih Bukhari",
  },
  {
    "hadddith_card_image": app_images.hadith_slider06,
    "hadith":
        "اللَّهمَّ إني أعوذُ بكَ من مُنكراتِ الأخلاقِ والأعمالِ والأَهواءِ والأدواءِ",
    "hadith_eng":
        "O Allah, I seek refuge in You from evil morals, actions, desires, and diseases.",
    "hadith_Refrance": "رواه الألباني",
    "hadith_eng_ref": "Narrated by Al-Albani",
  },
  {
    "hadddith_card_image": app_images.hadith_slider07,
    "hadith":
        "اللَّهمَّ إنِّي أعوذُ بِك من شرِّ ما عَمِلتُ، ومن شرِّ ما لم أعمَلْ",
    "hadith_eng":
        "O Allah, I seek refuge in You from the evil of what I did, and from the evil of what I did not do.",
    "hadith_Refrance": "رواه الألباني",
    "hadith_eng_ref": "Narrated by Al-Albani",
  },
];

List arabic = [];
List malayalam = [];
List quran_old_ver = [];

Future readJson() async {
  final String response =
      await rootBundle.loadString("assets/json/hafs_smart_v8.json");
  final data = json.decode(response);
  arabic = data["quran"];
  malayalam = data["malayalam"];
  return quran_old_ver = [arabic, malayalam];
}
