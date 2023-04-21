part of '../imports/app_imports.dart';

class Hadith_narrator_screen extends StatelessWidget {
  Hadith_narrator_screen({super.key, this.hadith_titlle, this.narratorHadith});
  String? hadith_titlle;

  String? narratorHadith;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppLangKey.narrator.tr()),
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Container(
            padding:
                EdgeInsets.fromLTRB(AppDime.md, AppDime.xlg, AppDime.md, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppTheme.isDark(context)
                        ? app_images.Godnames_page_background_01
                        : app_images.Godnames_page_background_04))),
            child: ListView(children: [
              Center(
                child: Container(
                    padding: EdgeInsets.all(AppDime.md),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(162, 0, 0, 0),
                        borderRadius: BorderRadius.circular(AppDime.md)),
                    child: _convertHadith(context, '${narratorHadith}')),
              ),
              SizedBox(
                height: AppDime.xlg,
              )
            ])));
  }
}
