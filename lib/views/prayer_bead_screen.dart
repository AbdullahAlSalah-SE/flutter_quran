part of '../imports/app_imports.dart';

class Prayer_bead_page extends StatefulWidget {
  const Prayer_bead_page({super.key});
  static const routename = '/Prayer_bead';

  @override
  State<Prayer_bead_page> createState() => _Prayer_bead_pageState();
}

class _Prayer_bead_pageState extends State<Prayer_bead_page> {
  int current_count = 0;
  int prev_count = 0;
  String tasbieh_word = 'الحمدالله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLangKey.prayerbead.tr()),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: AppDime.md.w),
                  width: AppDime.xlg.w,
                  height: AppDime.xlg.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: AppTheme.isDark(context)
                      ? AppSvg.prayer_beads02
                      : AppSvg.prayer_beads)
            ],
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppTheme.isDark(context)
                      ? app_images.prayer_background02
                      : app_images.prayer_background01))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // IconButton(onPressed: () {}, icon: AppSvg.prayer_beads02),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: AppDime.md.w),
                      width: AppDime.xxxlg.w,
                      height: AppDime.xxxlg.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.zero, left: Radius.circular(10))),
                    height: AppDime.xlg,
                    width: AppDime.xxlg,
                    child: Center(
                      child: Text(
                        '$current_count',
                        style: TextStyle(
                            fontSize: AppDime.xlg,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.aBeeZee().fontFamily,
                            color: AppColors.bgBlack),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDime.lg),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppTheme.isDark(context)
                                ? AppColors.quran_gold
                                : AppColors.bgBlue,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.zero, left: Radius.circular(10))),
                        height: AppDime.xlg,
                        child: Center(
                          child: Text(
                            '$prev_count',
                            style: TextStyle(color: AppColors.bgWhite),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.bgWhite,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.zero, right: Radius.circular(10))),
                        height: AppDime.xlg,
                        child: Center(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              alignment: Alignment.center,
                              iconSize: 0.0,

                              dropdownColor: AppColors.bgWhite,

                              // underline: null,

                              // Step 3.
                              value: tasbieh_word,
                              // Step 4.
                              // hint: Text(tasbieh_word),
                              items: <String>[
                                'سبحان الله',
                                'الحمدالله',
                                'الله أكبر',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontSize: 20, color: AppColors.bgBlack),
                                  ),
                                );
                              }).toList(),
                              // Step 5.
                              onChanged: (String? newValue) {
                                setState(() {
                                  tasbieh_word = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppDime.lg,
              ),
              Container(
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDime.lg),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppTheme.isDark(context)
                                ? AppColors.darkred
                                : AppColors.quran_Dark_blue,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.zero, left: Radius.circular(10))),
                        height: AppDime.xlg,
                        child: Center(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            onSurface: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            _reset_value();
                          },
                          child: Text(AppLangKey.reset.tr()),
                        )),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppTheme.isDark(context)
                                ? AppColors.quran_gold
                                : AppColors.bgBlue,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.zero, right: Radius.circular(10))),
                        height: AppDime.xlg,
                        child: Center(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            onSurface: Colors.transparent,
                            elevation: 0,
                          ),
                          onPressed: () {
                            _incrementCounter();
                          },
                          child: Text(
                            AppLangKey.praise.tr(),
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      current_count++;
    });
  }

  void _reset_value() {
    setState(() {
      prev_count = current_count;
      current_count = 0;
    });
  }
}
