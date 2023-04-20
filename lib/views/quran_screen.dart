part of '../imports/app_imports.dart';

class Quran_page extends StatelessWidget {
  const Quran_page({super.key});
  static const routename = '/Quranp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Go to bookmark',
        child: const Icon(Icons.bookmark),
        backgroundColor: AppTheme.isDark(context)
            ? AppColors.quran_gold
            : AppColors.quran_Dark_blue,
        onPressed: () async {
          fabIsClicked = true;
          if (await readBookmark() == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Chapter_Builder(
                          arabic: quran_old_ver[0],
                          chapter: bookmarkedSura - 1,
                          chapter_name: arabicName[bookmarkedSura - 1]['name'],
                          verse: bookmarkedAyah,
                        )));
          }
        },
      ),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            // AppLangKey.qurankarem.tr(),
            AppLangKey.contents.tr(),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Font_Settings.routename);
                },
                icon: AppSvg.quran_btn03,
                color: Colors.white,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ))
          ]),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: FutureBuilder(
          future: readJson(),
          builder: (
            BuildContext context,
            AsyncSnapshot snapshot,
          ) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData) {
                return indexCreator(snapshot.data, context);
              } else {
                return const Text('Empty data');
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ),
      ),
    );
  }

  Container indexCreator(quran, context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.isDark(context)
                ? app_images.Godnames_page_background_02
                : app_images.Godnames_page_background_04),
            fit: BoxFit.cover),
      ),
      // color: const Color.fromARGB(255, 221, 250, 236),
      child: ListView(
        children: [
          for (int i = 0; i < 114; i++)
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDime.xlg, vertical: AppDime.md),
              decoration: BoxDecoration(
                // color: AppTheme.isDark(context)
                //     ? i % 2 == 0
                //         ? Color.fromARGB(255, 39, 39, 38)
                //         : Color.fromARGB(255, 37, 37, 37)
                //     : i % 2 == 0
                //         ? AppColors.bgGrey
                //         : AppColors.bgGrey,
                image: DecorationImage(
                  image: AssetImage(AppTheme.isDark(context)
                      ? app_images.islamic_banner_02
                      : app_images.islamic_banner_03),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // const SizedBox(width: 5),s
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [],
                    //   ),
                    // ),
                    // const Expanded(child: SizedBox()),
                    ArabicSuraNumber(i: i),
                    const SizedBox(width: 5),

                    Text(
                      arabicName[i]['name'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppDime.lg_2,
                          color: AppTheme.isDark(context)
                              ? AppColors.quran_gold
                              : Colors.black87,

                          // fontFamily: 'quran',
                          shadows: [
                            Shadow(
                              offset: Offset(.8, .8),
                              blurRadius: 1.0,
                              color: Color.fromARGB(255, 112, 112, 112),
                            )
                          ]),
                    ),
                  ],
                ),
                onPressed: () {
                  fabIsClicked = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Chapter_Builder(
                              arabic: quran[0],
                              chapter: i,
                              chapter_name: arabicName[i]['name'],
                              verse: 0,
                            )),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
