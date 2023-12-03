import 'package:flutter/material.dart';
import 'package:mohammad_yusuf_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class PicsliderItemWidget extends StatelessWidget {
  const PicsliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgPic1,
        height: 107.v,
        width: 120.h,
      ),
    );
  }
}
