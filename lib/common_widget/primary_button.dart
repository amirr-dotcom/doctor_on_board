


import 'package:doctor_on_boarding/app_color.dart';
import 'package:flutter/material.dart';



class PrimaryButton extends StatelessWidget {

  final Function onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final bool expanded;
  final double? width;
  final double? elevation;
  final Widget? icon;
  final Color? titleColor;

  const PrimaryButton({Key? key,
    required this.onPressed,
    required this.title,
    this.padding,
    this.color,
    this.borderColor,
    this.expanded=true,
    this.width,
    this.elevation,
    this.icon,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed();
      },
      child: SizedBox(
        width: width?? (expanded?double.infinity:width),
        child: Container(
            decoration:  BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColor.primaryColor,
                    AppColor.primaryColor,
                    AppColor.primaryColor,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0))
            ),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            icon==null?Container():Padding(
              padding: const EdgeInsets.fromLTRB(0,0,5,0,),
              child: icon,
            ),
            Text(title,
              style: TextStyle(
                  fontSize: 16,
                  color: titleColor
              ),),
          ],
        )),
      ),
    );
  }
}
