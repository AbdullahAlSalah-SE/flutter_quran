part of '../imports/app_imports.dart';

class Hadith_screen extends StatelessWidget {
  Hadith_screen({super.key, this.hadith_titlle, this.hadith_text});

  String? hadith_titlle;
  String? hadith_text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('${hadith_titlle}'),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
          padding: EdgeInsets.fromLTRB(AppDime.md, AppDime.xlg, AppDime.md, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppTheme.isDark(context)
                      ? app_images.Godnames_page_background_01
                      : app_images.Godnames_page_background_04))),
          child: ListView(
            children: [
              Container(
                // height: 500,
                child: DefaultTextStyle(
                  style: TextStyle(color: AppColors.bgWhite),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(
                            AppDime.md,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(162, 0, 0, 0),
                              borderRadius: BorderRadius.circular(AppDime.md)),
                          child: _convertHadith(context, '${hadith_text}')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDime.xlg,
              ),
            ],
          )),
    );
  }
}
