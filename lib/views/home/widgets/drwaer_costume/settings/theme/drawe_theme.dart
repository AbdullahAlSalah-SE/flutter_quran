part of '../../../../../../imports/app_imports.dart';

class DrawerTheme extends StatelessWidget {
  const DrawerTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Provider Theme
    final ManageTheme manageTheme = Provider.of<ManageTheme>(context);

    return Switch(
      value: manageTheme.theme,
      onChanged: manageTheme.updateTheme,
    );
  }
}
