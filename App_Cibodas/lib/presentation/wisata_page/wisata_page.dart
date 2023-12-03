import '../wisata_page/widgets/picslider_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohammad_yusuf_s_application9/core/app_export.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlineBlack,
                child: Column(children: [
                  _buildKebunRayaCibodas(context),
                  Spacer(),
                  SizedBox(height: 29.v),
                  _buildPicSlider(context)
                ]))));
  }

  /// Section Widget
  Widget _buildKebunRayaCibodas(BuildContext context) {
    return SizedBox(
        height: 312.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgKebunRayaCibodas312x375,
              height: 312.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 46.v,
                  width: 49.h,
                  margin: EdgeInsets.only(left: 25.h, top: 29.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      alignment: Alignment.center,
                      onTap: () {
                        onTapImgArrowLeft(context);
                      })
                      )),
        ]));
  }

  /// Section Widget
  Widget _buildPicSlider(BuildContext context) {
    return SizedBox(
        height: 107.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 9.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return PicsliderItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
