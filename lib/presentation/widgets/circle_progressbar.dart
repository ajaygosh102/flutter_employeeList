import 'package:floges_flutter_app/config/theme.dart';
import 'package:flutter/material.dart';

Widget showCircleProgress({double size = 30}) => Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          backgroundColor: AppColors.black,
          valueColor: new AlwaysStoppedAnimation<Color>(AppColors.darkGray),
        ),
      ),
    );
