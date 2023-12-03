import 'package:flutter/material.dart';
import 'package:mohammad_yusuf_s_application9/core/app_export.dart';
import 'package:mohammad_yusuf_s_application9/widgets/custom_checkbox_button.dart';
import 'package:mohammad_yusuf_s_application9/widgets/custom_elevated_button.dart';
import 'package:mohammad_yusuf_s_application9/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginBottomsheet extends StatelessWidget {
  LoginBottomsheet({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  bool ingatkansaya = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 14.v),
        decoration: AppDecoration.fillBlue
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildWelcomeBackLoginTitle(context),
          SizedBox(height: 31.v),
          CustomTextFormField(
              controller: emailController,
              hintText: "email",
              hintStyle: CustomTextStyles.bodyLargeErrorContainer_1,
              textInputType: TextInputType.emailAddress,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 27.v, 15.h, 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 25.adaptSize,
                      width: 25.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 69.v)),
          SizedBox(height: 35.v),
          CustomTextFormField(
              controller: inputTwoController,
              hintText: "kata sandi",
              hintStyle: CustomTextStyles.bodyLargeErrorContainer_1,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 15.h, 18.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 60.v),
              contentPadding:
                  EdgeInsets.only(left: 20.h, top: 18.v, bottom: 18.v)),
          SizedBox(height: 20.v),
          _buildFifteen(context),
          SizedBox(height: 19.v),
          CustomElevatedButton(
              text: "Masuk",
              onPressed: () {
                onTapMasuk(context);
              }),
          SizedBox(height: 21.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Tidak mempunyai akun",
                    style: theme.textTheme.bodyLarge),
                TextSpan(text: "? ", style: theme.textTheme.bodyLarge),
                TextSpan(text: "Daftar", style: theme.textTheme.titleMedium)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 21.v)
        ]));
  }

  /// Section Widget
  Widget _buildWelcomeBackLoginTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Welcome Back!!!",
                    style: CustomTextStyles.titleLargeErrorContainer),
                SizedBox(height: 8.v),
                Text("Login", style: theme.textTheme.headlineLarge)
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(bottom: 49.v),
                  onTap: () {
                    onTapImgClose(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomCheckboxButton(
              text: "ingatkan saya",
              value: ingatkansaya,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                ingatkansaya = value;
              }),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("Lupa Kata Sandi?",
                  style: CustomTextStyles.bodySmallErrorContainer))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapMasuk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
