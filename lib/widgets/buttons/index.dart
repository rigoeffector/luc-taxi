import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Color backgroundColor;
  final Function()? onTap;
  final bool isLoading;
  final double? width;
  const MainButton(
      {Key? key,
      required this.title,
      this.onTap,
      required this.isLoading,
      required this.backgroundColor,
      this.width,
      this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isLoading
                ? SpinKitThreeBounce(
                    color: titleColor,
                    size: 20,
                  )
                : Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
          ],
        ),
      ),
    );
  }
}
