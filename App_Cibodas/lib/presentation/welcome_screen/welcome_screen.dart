import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohammad_yusuf_s_application9/core/app_export.dart';
import 'package:mohammad_yusuf_s_application9/widgets/custom_outlined_button.dart';
import 'package:mohammad_yusuf_s_application9/presentation/login_bottomsheet/login_bottomsheet.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 42.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildIllustrationPicture(context),
                  SizedBox(height: 45.v),
                  Container(
                      decoration: AppDecoration.outlineOnPrimary,
                      child: Text("Selamat Datang",
                          style: theme.textTheme.displaySmall)),
                  SizedBox(height: 17.v),
                  Container(
                      width: 273.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      decoration: AppDecoration.outlineSecondaryContainer,
                      child: Text(
                          "Selamat datang di aplikasi \ninformasi wisata",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeGray100)),
                  SizedBox(height: 46.v),
                  CustomOutlinedButton(
                      text: "Lanjutkan",
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      onPressed: () {
                        onTapLanjutkan(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildIllustrationPicture(BuildContext context) {
    return SizedBox(
        height: 318.v,
        width: 320.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCloud,
              height: 294.v,
              width: 315.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 72.h, vertical: 43.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup2),
                          fit: BoxFit.cover)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPngtreeSummer,
                      height: 224.v,
                      width: 158.h)))
        ]));
  }

  /// Shows a modal bottom sheet with [LoginBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapLanjutkan(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => LoginBottomsheet(),
        isScrollControlled: true);
  }
}
