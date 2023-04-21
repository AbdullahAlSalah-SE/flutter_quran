// import '../botombar.dart';
// import '../db/mydata.dart';
// import '../model/hadithe.dart';
part of '../imports/app_imports.dart';

class Ahadith_items_list extends StatefulWidget {
  @override
  State<Ahadith_items_list> createState() => _Ahadith_items_listState();
  static const routename = '/Ahadith_items_list';
}

class _Ahadith_items_listState extends State<Ahadith_items_list> {
  Widget ayah(String? key, name) {
    return Container(
      margin: EdgeInsets.all(AppDime.md),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Image.asset("assets/img.png"),
          // SvgPicture.asset("assets/svg/grey.svg"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${key}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textScaleFactor: .5,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        AppLangKey.foutry_nawawiy.tr(),
      )),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppTheme.isDark(context)
                    ? app_images.Godnames_page_background_01
                    : app_images.Godnames_page_background_04))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: AppTheme.isDark(context) ? Colors.black54 : Colors.white,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(""),
                            Text(
                              AppLangKey.to_memo_hadith.tr(),
                              style: TextStyle(
                                  color: AppTheme.isDark(context)
                                      ? AppColors.bgWhite
                                      : AppColors.bgBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            AppTheme.isDark(context)
                                ? AppSvg.islam_symbol02
                                : AppSvg.islam_symbol01,
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 0,
            ),
            Expanded(
              child: Stack(
                children: [
                  // SvgPicture.asset(
                  //   "assets/svg/background.svg",
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                  FutureBuilder(

                      //we call the method, which is in the folder db file database.dart
                      future: Mydata.getAlldata(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return GridView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              Hadith item = snapshot.data[index];
                              //delete one register for id
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Hadith_home_page.routename,
                                        arguments: {
                                          'hadith_item': item,
                                        });
                                  },
                                  child: ayah(item.key, item.nameHadith));
                            },
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              mainAxisSpacing: 20,
                              childAspectRatio: 3 / 2,
                            ),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
                ],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
