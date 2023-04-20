part of '../../../../../../imports/app_imports.dart';

class Drawer_Lang extends StatefulWidget {
  Drawer_Lang({
    Key? key,
  }) : super(key: key);

  @override
  State<Drawer_Lang> createState() => _Drawer_LangState();
}

class _Drawer_LangState extends State<Drawer_Lang> {
  bool choose = false;
  String? value;
  final List<String> _itemLang = [ken, kar];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      value = AppLang.currentLang(context);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDime.md.h),
      child: DropdownButton(
        value: value,
        items: _itemLang
            .map((item) =>
                DropdownMenuItem<String>(value: item, child: Text(item)))
            .toList(),
        onChanged: changeLang,
      ),
    );
  }

  // * change lang
  void changeLang(String? value) {
    if (this.value != value) {
      AppLang.setlang(context, AppLang.currentLangLocale(context, value));
      this.value = value;
      App_Restart.reBuild(context);
    }
  }
}
