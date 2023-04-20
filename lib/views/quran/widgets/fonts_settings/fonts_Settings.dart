part of '../../../../imports/app_imports.dart';

class Font_Settings extends StatefulWidget {
  const Font_Settings({Key? key}) : super(key: key);
  static const routename = '/Font_settings';
  @override
  State<Font_Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Font_Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLangKey.settings.tr(),
        ),
        // backgroundColor: AppColors.quran_Dark_blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Arabic Font Size:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Slider(
                  value: arabicFontSize,
                  min: 20,
                  max: 40,
                  onChanged: (value) {
                    setState(() {
                      arabicFontSize = value;
                    });
                  },
                ),
                Text(
                  "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                  style:
                      TextStyle(fontFamily: 'quran', fontSize: arabicFontSize),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Divider(),
                ),
                const Text(
                  'Mushaf Mode Font Size:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Slider(
                  value: mushafFontSize,
                  min: 20,
                  max: 50,
                  onChanged: (value) {
                    setState(() {
                      mushafFontSize = value;
                    });
                  },
                ),
                Text(
                  "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                  style:
                      TextStyle(fontFamily: 'quran', fontSize: mushafFontSize),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            arabicFontSize = 28;
                            mushafFontSize = 40;
                          });
                          saveSettings();
                        },
                        child: const Text('Reset')),
                    ElevatedButton(
                        onPressed: () {
                          saveSettings();
                          Navigator.of(context).pop();
                        },
                        child: const Text('Save')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
