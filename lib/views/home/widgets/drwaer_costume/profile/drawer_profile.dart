part of '../../../../../imports/app_imports.dart';

class Profile_drawer extends StatelessWidget {
  const Profile_drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppTheme.isDark(context)
            ? AppColors.bgGold
            : AppColors.quran_Dark_blue,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: AppDime.md),
              width: AppDime.xxlg_8,
              height: AppDime.xxlg_8.h,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      // image: NetworkImage(app_images.onlineimage)))),
                      image: AssetImage(AppTheme.isDark(context)
                          ? app_images.mosque_golden
                          : app_images.mosque_white_blue)))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Salam',
                style: TextStyle(
                    fontSize: AppDime.xlg,
                    fontWeight: FontWeight.w900,
                    color: AppTheme.isDark(context)
                        ? AppColors.bgBlack
                        : AppColors.bgWhite),
              ),
              AppDime.md.verticalSpace,
              Text(
                'by abdullah salalh',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppTheme.isDark(context)
                      ? AppColors.bgBlack
                      : AppColors.bgWhite,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
