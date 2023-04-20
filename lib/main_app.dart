part of '../../imports/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localized.EasyLocalization.ensureInitialized();

  runApp(localized.EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(ken),
      fallbackLocale: Locale(
        ken,
      ),
      child: app_store_main()));
}

class app_store_main extends StatefulWidget {
  const app_store_main({Key? key}) : super(key: key);

  @override
  State<app_store_main> createState() => _app_store_mainState();
}

class _app_store_mainState extends State<app_store_main> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ManageTheme(),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (context, child) {
            final ManageTheme manageTheme = Provider.of<ManageTheme>(context);
            return MaterialApp(
              title: AppLangKey.appname,
              debugShowCheckedModeBanner: false,
              // home: const Page_spalsh(),

              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,

              //* theme
              // theme: ThemeData.light()
              //     .copyWith(scaffoldBackgroundColor: Colors.blue),
              theme: AppThemeChoose.lightTheme(context),
              darkTheme: AppThemeChoose.darkTheme(context),
              // themeMode: ThemeMode.dark,
              themeMode: manageTheme.themeMode,
              //  AppThemeChoose.darkTheme(context),
              // darkTheme:
              //     ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.red),
              // themeMode: ThemeMode.light,

              //* root (/)
              initialRoute: Splash_Page.routename,
              // initialRoute: '/',
              routes: AppRoutes.route,
            );
          }),
    );
  }
}
