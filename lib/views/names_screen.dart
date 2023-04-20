// import 'package:asmaulhusna/details.dart';
// import 'package:flutter/material.dart';
// import 'package:asmaulhusna/data/data.dart';
// import 'dart:convert';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part of '../imports/app_imports.dart';

class Names_page extends StatefulWidget {
  static const routename = '/Names_p';

  @override
  _Names_pageState createState() => _Names_pageState();
}

class _Names_pageState extends State<Names_page> {
  List<Name> names = [];
  var data = json.decode(jsonData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLangKey.the_names_of_Allah.tr(),
          style: TextStyle(fontSize: AppDime.lg_1),
        ),
        centerTitle: true,
        primary: true,
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.link),
          //   onPressed: () async {
          //     // launch for more app
          //     var url = "https://www.facebook.com/mdmortuza.hossain";
          //     if (await canLaunch(url))
          //       await launch(url);
          //     else
          //       throw 'Could not launch $url';
          //   },
          // )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppTheme.isDark(context)
                  ? app_images.Godnames_page_background_01
                  : app_images.Godnames_page_background_04),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
              children: List.generate(data.length, (index) {
                return getStructuredGridCell(
                    context,
                    Name(data[index][1], data[index][2], data[index][3],
                        data[index][4], data[index][5], data[index][6]));
              })),
        ),
      ),
    );
  }
}

Card getStructuredGridCell(BuildContext context, Name name) {
  return new Card(
      elevation: 5,
      color: Color.fromRGBO(20, 23, 24, 0.5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NameDetails(data: name)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text(
              name.name.replaceAll("'", ""),
              style: TextStyle(fontSize: 30.0, color: AppColors.bgWhite),
            ),
            Text(
              name.nameEn,
              style: TextStyle(fontSize: 26.0, color: AppColors.bgWhite),
            ),
            Text(
              name.meaning,
              style: TextStyle(color: AppColors.bgWhite),
            )
          ],
        ),
      ));
}
