part of '../../imports/app_imports.dart';

class AppToast {
  static toast(String msg, {Color color = Colors.red}) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.sm,
    );
  }
}
