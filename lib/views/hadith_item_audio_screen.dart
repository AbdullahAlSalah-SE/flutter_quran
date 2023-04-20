part of '../imports/app_imports.dart';

class Hadith_item_audio_screen extends StatefulWidget {
  Hadith_item_audio_screen({
    super.key,
    this.mp3file_path,
  });
  String? mp3file_path = '';

  @override
  State<Hadith_item_audio_screen> createState() =>
      _Hadith_item_audio_screenState();
}

String url_pyath = 'https://server6.mp3quran.net/thubti/001.mp3';
String hadith_title = '';

class _Hadith_item_audio_screenState extends State<Hadith_item_audio_screen> {
  final audioPlayer = AudioPlayer();
  bool isplaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // readarg();

    Future.delayed(
      Duration.zero,
      () {
        final hadith_arg = ModalRoute.of(context)!.settings.arguments as Map;
        // print('${ApiKey.base_audio_hadith_path}${this.widget.mp3file_path}');
        // url_pyath =
        // 'https://server6.mp3quran.net/thubti/${hadith_arg['hadith_url_path']}';
        // hadith_title = hadith_arg['hadith_title_txt'];
      },
    );

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isplaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    super.initState();
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    // final String response =
    //     await rootBundle.loadString('assets/json/adkar.json');

    String url = '${ApiKey.base_audio_hadith_path}${this.widget.mp3file_path}';
    // String url = 'https://server6.mp3quran.net/thubti/001.mp3';

    audioPlayer.setSource(AssetSource(url));
    // audioPlayer.setSource(UrlSource(url));
  }

  @override
  void dispose() {
    // audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاستماع'),
        leading: BackButton(
          onPressed: () {
            audioPlayer.dispose();
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppTheme.isDark(context)
                    ? app_images.Godnames_page_background_01
                    : app_images.Godnames_page_background_04))),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: AppDime.lg, horizontal: AppDime.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   child: Image(image: AssetImage(app_images.phanoes)),
              //   height: 80,
              //   width: 80,
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.black54,
                  child: Image(
                    image: AssetImage(AppTheme.isDark(context)
                        ? app_images.mosque_golden
                        : app_images.mosque_white_blue),
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: AppDime.lg,
              ),
              Slider(
                  // thumbColor: Colors.black,
                  inactiveColor: Colors.black,
                  activeColor: Colors.red,
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async {
                    final position = Duration(seconds: value.toInt());
                    await audioPlayer.seek(position);

                    await audioPlayer.resume();
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatTime(position.inSeconds),
                      style: TextStyle(
                          backgroundColor: Colors.black54,
                          fontWeight: FontWeight.bold,
                          color: AppColors.bgWhite),
                    ),
                    Text(
                      formatTime(duration.inSeconds - position.inSeconds),
                      style: TextStyle(
                          backgroundColor: Colors.black54,
                          fontWeight: FontWeight.bold,
                          color: AppColors.bgWhite),
                    )
                  ],
                ),
              ),
              CircleAvatar(
                radius: 35,
                child: IconButton(
                  icon: Icon(
                    isplaying ? Icons.pause : Icons.play_arrow,
                  ),
                  iconSize: 50,
                  onPressed: () async {
                    if (isplaying) {
                      await audioPlayer.pause();
                    } else {
                      await audioPlayer.resume();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.substring(2, 7);
  }
}
