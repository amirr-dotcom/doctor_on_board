





import 'package:doctor_on_boarding/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';






class PrimaryTextField extends StatelessWidget {

  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final int? maxLength;
  final bool? enabled;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final ValueChanged? onChanged;
  final Color? borderColor;
  final String? labelText;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final InputBorder? border;
  final TextStyle? style;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;


  const PrimaryTextField({Key? key, this.hintText, this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.enabled,
    this.textAlign,
    this.keyboardType,
    this.decoration,
    this.onChanged,
    this.borderColor,
    this.maxLine,
    this.labelText,
    this.backgroundColor,
    this.hintTextColor,
    this.border,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.style,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
          inputFormatters: inputFormatters,
          cursorColor: Colors.black,
          enabled: enabled??true,
          controller: controller,
          textInputAction: TextInputAction.done,
          //  style: const TextStyle(color: Colors.white),
          minLines: maxLine,
          maxLines: maxLine==null? 1:100,
          maxLength: maxLength,
          textAlign: textAlign?? TextAlign.start,
          keyboardType: keyboardType,
          onChanged: onChanged==null? null:(val){
            onChanged!(val);
          },

          // style:  MyTextTheme().mediumBCN,
          decoration: decoration??InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            filled: true,
            isDense: true,
            fillColor: (enabled??true)?
            backgroundColor??
                AppColor.primaryColor:Colors.grey.shade200,
            counterText: '',
            //contentPadding: isPasswordField==null? EdgeInsets.all(5):isPasswordField? EdgeInsets.fromLTRB(5,5,5,5):EdgeInsets.all(5),
            contentPadding:  const EdgeInsets.all(12),
            hintText: hintText,
            hintStyle:TextStyle(
              color:hintTextColor?? Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600
            ),
            labelText: labelText,
            // labelStyle: MyTextTheme.smallPCB,
            // errorStyle: MyTextTheme.mediumBCN.copyWith(
            //   color: AppColor.error,
            //   fontSize: 14,
            // ),



            suffixIconConstraints: suffixIconConstraints?? BoxConstraints(
                maxHeight: 16.h,
                minHeight: 16.h,
                maxWidth: 18.h,
                minWidth: 18.h
            ),
            prefixIconConstraints:prefixIconConstraints??  BoxConstraints(
                maxHeight: 16.h,
                minHeight: 16.h,
                maxWidth: 22.h,
                minWidth: 22.h
            ),
            prefixIcon: Padding(
              padding:  EdgeInsets.fromLTRB(0,0,8.r,0),
              child: prefixIcon,
            ),
            suffixIcon:  Padding(
                padding:  EdgeInsets.fromLTRB(0,0,8.r,0),
                child: suffixIcon),
            enabledBorder:  border??  const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            disabledBorder:  border??  const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder:  border??  const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),


          ),

          validator: validator
      );
  }
}







