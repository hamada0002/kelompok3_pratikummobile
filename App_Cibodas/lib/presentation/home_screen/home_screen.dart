import 'package:flutter/material.dart';
import 'package:mohammad_yusuf_s_application9/core/app_export.dart';
import 'package:mohammad_yusuf_s_application9/presentation/wisata_page/wisata_page.dart';
import 'package:mohammad_yusuf_s_application9/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammad_yusuf_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:mohammad_yusuf_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammad_yusuf_s_application9/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Spacer(flex: 56),
                  _buildTwelve(context),
                  Spacer(flex: 43)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 71.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(left: 43.h, top: 17.v, bottom: 14.v)),
        actions: [
          AppbarTitle(
              text: "Hello User",
              margin: EdgeInsets.fromLTRB(20.h, 19.v, 4.h, 13.v)),
          Container(
              height: 47.v,
              width: 51.h,
              margin: EdgeInsets.only(left: 18.h, top: 4.v, right: 24.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(16.h)))
        ]);
  }

  /// Section Widget
 Widget _buildTwelve(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(children: [
          Container(
              height: 367.v,
              width: 262.h,
              decoration: BoxDecoration(
                 color: appTheme.blue600,
                 borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.h),
                      topRight: Radius.circular(40.h),
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h)),
                 boxShadow: [
                    BoxShadow(
                        color: appTheme.amber10066,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 2))
                  ])),
          Stack(
            children: [
              CustomImageView(
                 imagePath: ImageConstant.imgKebunRayaCibodas,
                 height: 367.v,
                 width: 262.h,
                 radius: BorderRadius.only(
                      topLeft: Radius.circular(40.h),
                      topRight: Radius.circular(40.h),
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h)),
                 margin: EdgeInsets.only(left: 27.h),
                 onTap: () {
                    onTapImgKebunRayaCibodas(context);
                 }),
              Positioned(
                left: 40.h,
                top: 240.v,
                child: Text(
                 "Kebun Raya Cibodas",
                 style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CustomImageView(
                 imagePath: ImageConstant.imgAirTerjun,
                 height: 367.v,
                 width: 262.h,
                 radius: BorderRadius.only(
                      topLeft: Radius.circular(40.h),
                      topRight: Radius.circular(40.h),
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h)),
                 margin: EdgeInsets.only(left: 27.h)),
              Positioned(
                left: 40.h,
                top: 240.v,
                child: Text(
                 "Air Terjun",
                 style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CustomImageView(
                 imagePath: ImageConstant.imgKonservatori,
                 height: 367.v,
                 width: 262.h,
                 radius: BorderRadius.only(
                      topLeft: Radius.circular(40.h),
                      topRight: Radius.circular(40.h),
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h)),
                 margin: EdgeInsets.only(left: 27.h)),
              Positioned(
                left: 40.h,
                top: 240.v,
                child: Text(
                 "Konservatori",
                 style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
              height: 367.v,
              width: 262.h,
              margin: EdgeInsets.only(left: 27.h),
              decoration: BoxDecoration(
                 color: appTheme.blue600,
                 borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.h),
                      topRight: Radius.circular(40.h),
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h)),
                 boxShadow: [
                    BoxShadow(
                        color: appTheme.amber10066,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 2))
                 ]))
        ])));
 }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Btngps:
        return "/";
      case BottomBarEnum.Btnhome:
        return AppRoutes.wisataPage;
      case BottomBarEnum.Btnshare:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.wisataPage:
        return WisataPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the wisataContainerScreen when the action is triggered.
  onTapImgKebunRayaCibodas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.wisataContainerScreen);
  }
}
