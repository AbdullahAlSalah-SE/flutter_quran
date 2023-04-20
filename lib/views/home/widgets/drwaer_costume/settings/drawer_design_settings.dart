part of '../../../../../imports/app_imports.dart';

class DrawerDesignSettings extends StatelessWidget {
  const DrawerDesignSettings(
      {Key? key,
      required this.title,
      required this.svg_icon,
      this.onTap,
      this.trailing})
      : super(key: key);
  final String title;
  final SvgPicture svg_icon;
  final void Function()? onTap;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: svg_icon,
      onTap: () => onTap,
      trailing: trailing,
    );
  }
}
