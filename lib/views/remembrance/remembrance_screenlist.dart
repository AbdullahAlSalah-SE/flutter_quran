part of '../../imports/app_imports.dart';

class Remembrance_list extends StatefulWidget {
  Remembrance_list({
    super.key,
  });
  static const routename = '/Remember_list';

  @override
  State<Remembrance_list> createState() => _Remembrance_listState();
}

String title = '';
//${ApiKey.baseApi_dekr}${urlstring}
List items = [];

class _Remembrance_listState extends State<Remembrance_list> {
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/adkar.json');
    final arg = ModalRoute.of(context)!.settings.arguments as Map;

    print('${arg['url_path']} + wtf is that');
    title = arg['url_path'];
    String result = arg['url_path'];
    final data = await json.decode(response);
    setState(() {
      items = data['$result'];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments as Map;
    // String urlstring = arg['url_path'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: mysecondtry(),
    );
  }

  mysecondtry() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.isDark(context)
                ? app_images.Godnames_page_background_01
                : app_images.Godnames_page_background_03),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppDime.lg),
        child: Column(
          children: [
            // ElevatedButton(
            //   child: const Text('Load Data'),
            //   onPressed: readJson,
            // ),

            // Display the data loaded from sample.json
            items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.black54,
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(
                              items[index]["category"],
                              style: TextStyle(color: AppColors.bgWhite),
                            ),
                            title: Text(
                              items[index]["content"],
                              style: TextStyle(color: AppColors.bgWhite),
                            ),
                            subtitle: Text(
                              items[index]["description"],
                              style: TextStyle(color: AppColors.bgWhite),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
