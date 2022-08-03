


import 'package:doctor_on_boarding/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class PrimaryButton extends StatelessWidget {

  final Function onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final bool expanded;
  final double? width;
  final double? elevation;
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
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:  RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(Radius.circular(80.0.r))
      ),
      onTap: (){
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
          width: width?? (expanded?double.infinity:width),
          child: Container(
            height: 50.h,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35.r)),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF131040),

                    Color(0xFF332C6C),
                  ],
                )
            ),
            child: Center(
              child: Text(title.toString(),style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight:FontWeight.w700,
                  color:Colors.white
              ) ,),
            ),
          ),
        ),
      ),
    );
  }
}
