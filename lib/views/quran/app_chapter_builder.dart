part of '../../imports/app_imports.dart';

class Chapter_Builder extends StatefulWidget {
  final chapter;
  final arabic;
  final chapter_name;
  int verse;

  Chapter_Builder(
      {Key? key,
      this.chapter,
      this.arabic,
      this.chapter_name,
      required this.verse})
      : super(key: key);

  @override
  _Chapter_BuilderState createState() => _Chapter_BuilderState();
}

class _Chapter_BuilderState extends State<Chapter_Builder> {
  bool view = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => go_to_verse());
    super.initState();
  }

  go_to_verse() {
    if (fabIsClicked) {
      itemScrollController.scrollTo(
          index: widget.verse,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOutCubic);
    }
    fabIsClicked = false;
  }

  Row verseBuilder(int index, previousVerses) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  widget.arabic[index + previousVerses]['aya_text'],
                  style: TextStyle(
                    fontSize: arabicFontSize,
                    fontFamily: arabicFont,
                    color: AppTheme.isDark(context)
                        ? AppColors.quran_gold
                        : Colors.black87,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [],
              ),
            ],
          ),
        ),
      ],
    );
  }

  SafeArea SinglechapterBuilder(LenghtOfchapter) {
    String fullchapter = '';
    int previousVerses = 0;
    if (widget.chapter + 1 != 1) {
      for (int i = widget.chapter - 1; i >= 0; i--) {
        previousVerses = previousVerses + noOfVerses[i];
      }
    }

    if (!view)
      for (int i = 0; i < LenghtOfchapter; i++) {
        fullchapter += (widget.arabic[i + previousVerses]['aya_text']);
      }

    return SafeArea(
      child: Container(
        // color:
        //     AppTheme.isDark(context) ? AppColors.bgCursor : AppColors.bgWhite,
        child: view
            ? ScrollablePositionedList.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      (index != 0) ||
                              (widget.chapter == 0) ||
                              (widget.chapter == 8)
                          ? const Text('')
                          : const RetunBasmala(),
                      Container(
                        // color: AppTheme.isDark(context)
                        //      AppColors.bgCursor
                        //     : AppColors.bgWhite,
                        child: PopupMenuButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: verseBuilder(index, previousVerses),
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    onTap: () {
                                      saveBookMark(widget.chapter + 1, index);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.bookmark_add,
                                          color: AppColors.quran_Dark_blue,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(AppLangKey.bookmarks.tr()),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                    onTap: () {},
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.share,
                                          color: AppColors.quran_Dark_blue,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(AppLangKey.share.tr()),
                                      ],
                                    ),
                                  ),
                                ]),
                      ),
                    ],
                  );
                },
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemCount: LenghtOfchapter,
              )
            : ListView(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            widget.chapter + 1 != 1 && widget.chapter + 1 != 9
                                ? const RetunBasmala()
                                : const Text(''),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                fullchapter, //mushaf mode
                                textDirection: TextDirection.rtl,

                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: mushafFontSize,
                                  fontFamily: arabicFont,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int LengthOfchapter = noOfVerses[widget.chapter];

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            // color: AppColors.quran_gold,
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          actions: [
            Tooltip(
              message: 'Mushaf Mode',
              child: TextButton(
                child: const Icon(
                  Icons.chrome_reader_mode,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    view = !view;
                  });
                },
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            // widget.
            widget.chapter_name,
            textAlign: TextAlign.center,
          ),
        ),
        body: SinglechapterBuilder(LengthOfchapter),
      ),
    );
  }
}

class RetunBasmala extends StatelessWidget {
  const RetunBasmala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Text(
          'بسم الله الرحمن الرحيم',
          style: TextStyle(fontFamily: 'me_quran', fontSize: 30),
        ),
      ),
    ]);
  }
}
