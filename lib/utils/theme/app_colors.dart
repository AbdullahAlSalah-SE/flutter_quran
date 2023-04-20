part of '../../imports/app_imports.dart';

class AppColors {
  //* bottom nav bar
  static Color nipa_brown = Color(0xFFD17842);
  static Color nica_grey = Color(0xFF4E5053);
  // static Color nica_brown = Color.fromARGB(255, 209, 120, 66);
  static Color colorFromHex(String hexColor, [String opacity = 'FF']) {
    // 1 delete #
    String color = hexColor.replaceAll('#', '');
    // after replace color =  ffffff

    // 2 merge opacity with color
    String opacityColor = opacity + color;
    // opacityColor = FFffffff

    // 3 return color dataType int
    return Color(int.parse(opacityColor, radix: 16));
    // return color = 0xFFffffff
  }

  // * color App
  static final Color blueDetailsBG = colorFromHex('#a2e7f5');
  static final Color darkMode = colorFromHex('#3A3B3C');
  static final Color darkModeCardDetails = colorFromHex('#484848');
  static final Color darkModeBodyDetails = colorFromHex('#303030');
  static final Color lightModeInstallBtn = colorFromHex('#456369');
  static final Color darkModeInstallBtn = colorFromHex('#BB86FC');
  static final Color lightModeUnInstallBtn = colorFromHex('#e95f44');
  static final Color darkModeUnInstallBtn = colorFromHex('#FF0266');
  static final Color lightModeToast = colorFromHex('#90ee02');
  static final Color darkModeToast = colorFromHex('#BB86FC');
  static final Color mb = colorFromHex('#FF0266');

  static final Color red = colorFromHex('#B71c1c');
  static final Color darkred = colorFromHex('#D30606');
  static final Color bgGold = colorFromHex('#FFD700');
  static final Color bgGrey_2 = colorFromHex('#707070');
  static final Color bgGreen_2 = colorFromHex('#0c9869');
  static final Color quran_green = colorFromHex('#436916');
  static final Color quran_Dark_blue = colorFromHex('#144466');
  static final Color quran_gold = colorFromHex('#ddba4e');

  static final Color orange = colorFromHex('#F57C00');
  static final Color blackCardSocial = colorFromHex('#000000', '54');
  // * loading
  static final Color lightLoading = colorFromHex('#46B5F6');
  static final Color darkLoading = colorFromHex('#BB86FC');
  static final Color cardClick = colorFromHex('#46B5F6');
  static final Color cardClickDark = colorFromHex('#BB86FC');

  static final Color bgWhite = colorFromHex('#FFFFFF');
  static final Color bgBlack = colorFromHex('#000000');
  static final Color bgDark = colorFromHex('#000000');
  static final Color bgCursor = colorFromHex('#3A3B3C');
  static final Color bgGrey = colorFromHex('#C8C8C8');
  static final Color bgGreen = colorFromHex('#A5D6A7');
  static final Color bgGreenBold = colorFromHex('#1B5E20');
  static final Color bgBlue = colorFromHex('#2196F3');
  static final Color bgRed = colorFromHex('#FD1D1D');
  static final Color star = colorFromHex('#FFC107');
}
