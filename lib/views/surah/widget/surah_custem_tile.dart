part of '../../../imports/app_imports.dart';

class SurahCustomListTile extends StatelessWidget {
  SurahCustomListTile(
      {super.key,
      required this.context,
      required this.ontap,
      required this.surah});

  Surah_amane surah;
  BuildContext context;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: AppColors.bgWhite, boxShadow: [
          BoxShadow(color: AppColors.bgBlack, blurRadius: 3.0)
        ]), // BoxDecoration
        child: Column(
          children: [
            Row(children: [
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Text(
                  (surah.number).toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  surah.englishName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(surah.englishNameTranslation),
              ]),
              Spacer(),
              Text(
                surah.name,
                style: TextStyle(),
              )
            ]), // Row
          ],
        ), // Column
      ), // Container
    );
// GestureDetector
  }
}
