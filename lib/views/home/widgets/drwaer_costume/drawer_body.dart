part of '../../../../imports/app_imports.dart';

class drawer_Body extends StatelessWidget {
  const drawer_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Profile_drawer(),
          Divider(
              color: AppTheme.isDark(context)
                  ? AppColors.bgWhite
                  : AppColors.bgBlack.withOpacity(0.8)),
          Settings_Drawer(),
        ],
      ),
    );
  }
}
