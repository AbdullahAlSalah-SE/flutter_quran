part of '../../../../imports/app_imports.dart';

class remembrance_l_card extends StatelessWidget {
  remembrance_l_card(
      {Key? key,
      required this.urlpath,
      required this.color_placeholder,
      required this.remember_text,
      required this.image_path})
      : super(key: key);
  Color color_placeholder = Colors.transparent;
  String remember_text;
  String image_path;
  String urlpath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppDime.lg),
      onTap: () {
        Navigator.pushNamed(context, Remembrance_list.routename,
            arguments: {'url_path': urlpath});
      },
      child: Card(
        elevation: AppDime.md,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
        ),
        color: color_placeholder,
        child: Container(
          padding: EdgeInsets.all(AppDime.md),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                height: 60,
                child: Image.asset(image_path),
              ),
              Text(
                remember_text,
                style: TextStyle(
                  fontSize: AppDime.lg_1,
                  color: AppColors.bgWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
