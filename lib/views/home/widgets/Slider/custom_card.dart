part of '../../../../imports/app_imports.dart';

class Card_home extends StatelessWidget {
  Card_home(
      {Key? key,
      required this.image_path,
      required this.text_info,
      required this.title})
      : super(key: key);
  String image_path = '';
  String title = '';
  String text_info = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppDime.md,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
      ),
      child: Container(
        // height: 70,
        padding: EdgeInsets.symmetric(horizontal: AppDime.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: AppDime.xxxlg,
                width: AppDime.xxxlg,
                child: Image(image: AssetImage(image_path))),
            Flexible(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  title,
                  style: GoogleFonts.alike(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: AppDime.lg,
                  ),
                ),
                Text(
                  text_info,
                  style: GoogleFonts.alike(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: AppDime.lg,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'سورة البقرة الاية 18',
                      style: GoogleFonts.alike(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 10),
                    ),
                    Expanded(
                        child: SizedBox(
                      width: 2,
                    ))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
