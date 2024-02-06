//loading dialog that takes full screen

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogBox {
  static void showLoadingDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return const LoadingDialogFullScreen();
      },
    );
  }
}
//function to show loading dialog

class LoadingDialogFullScreen extends StatelessWidget {
  const LoadingDialogFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Center(
        child: CupertinoActivityIndicator(
          color: Theme.of(context).colorScheme.onError,
          radius: 20.r,
        ),
      ),
    );
  }
}
