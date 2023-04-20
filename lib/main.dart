import 'package:flutter/material.dart';
import './imports/app_imports.dart';
import 'package:easy_localization/easy_localization.dart';

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash_Page.routename,
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(kar),
      fallbackLocale: Locale(
        kar,
      ),
      child: App_Restart(child: const app_store_main())));
}
