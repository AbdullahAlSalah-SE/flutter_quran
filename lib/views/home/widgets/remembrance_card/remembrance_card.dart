part of '../../../../imports/app_imports.dart';

class remembrance_card extends StatelessWidget {
  remembrance_card(
      {Key? key,
      required this.urlpath,
      required this.color_placeholder,
      required this.remember_text,
      required this.textcolor_value,
      required this.image_path})
      : super(key: key);
  Color color_placeholder = Colors.transparent;
  String remember_text;
  String image_path;
  String urlpath;
  Color textcolor_value;

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
          borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
        ),
        color: color_placeholder,
        child: Container(
          padding: EdgeInsets.all(AppDime.md),
          width: 170,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 70,
                child: Image.asset(image_path),
              ),
              Text(
                remember_text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textcolor_value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
