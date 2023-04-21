part of '../imports/app_imports.dart';

class Hadith_tafser_screen extends StatelessWidget {
  Hadith_tafser_screen({super.key, this.hadith_titlle, this.explanationHadith});
  String? hadith_titlle;

  String? explanationHadith;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppLangKey.explanation.tr()),
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
                      padding: EdgeInsets.fromLTRB(
                          AppDime.md, AppDime.md, AppDime.md, 0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(162, 0, 0, 0),
                          borderRadius: BorderRadius.circular(AppDime.md)),
                      child: _convertHadith(context, '${explanationHadith}'))),
              SizedBox(
                height: AppDime.xlg,
              )
            ])));
  }
}
