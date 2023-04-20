part of '../../imports/app_imports.dart';

class App_Restart extends StatefulWidget {
  App_Restart({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<App_Restart> createState() => _App_RestartState();
  // * method restart
  static void reBuild(BuildContext context) =>
      context.findAncestorStateOfType<_App_RestartState>()?.restartApp();
}

class _App_RestartState extends State<App_Restart> {
  Key _key = UniqueKey();

  void restartApp() {
    _key = UniqueKey();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _key,
      child: widget.child,
    );
  }
}
