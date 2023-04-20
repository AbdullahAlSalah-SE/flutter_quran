part of '../imports/app_imports.dart';

class Tafser_page extends StatefulWidget {
  const Tafser_page({super.key});
  static const routename = '/Tafser';

  @override
  State<Tafser_page> createState() => _Tafser_pageState();
}

String url_path = 'https://server6.mp3quran.net/thubti/001.mp3';
String title_qs = '';

class _Tafser_pageState extends State<Tafser_page> {
  final audioPlayer = AudioPlayer();
  bool isplaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  // Future<void> readarg() async {
  //  final String response =
  //     await rootBundle.loadString('assets/json/adkar.json');
  //   final arg = ModalRoute.of(context)!.settings.arguments as Map;
  //   print('this idk if empty or not ' + arg['url_path']);
  //   url_path = arg['url_path'];
  // }

  @override
  void initState() {
    // readarg();

    Future.delayed(
      Duration.zero,
      () {
        final arg = ModalRoute.of(context)!.settings.arguments as Map;
        print('https://server6.mp3quran.net/thubti/${arg['url_path']}');
        url_path = 'https://server6.mp3quran.net/thubti/${arg['url_path']}';
        title_qs = arg['title'];
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

    String url = url_path;
    audioPlayer.setSource(UrlSource(url));
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
        title: Text('$title_qs'),
        leading: BackButton(
          onPressed: () {
            audioPlayer.dispose();
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   BackButton(onPressed: () {
        //     audioPlayer.dispose();
        //     Navigator.pop(context);
        //   }),
        // ]
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppTheme.isDark(context)
              ? app_images.Godnames_page_background_01
              : app_images.Godnames_page_background_03),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://dcok7u9o4gc10.cloudfront.net/uploads/ckeditor/pictures/2297/content_shutterstock_1211223958.jpg',
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Slider(
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
    );
  }

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.substring(2, 7);
  }
}
