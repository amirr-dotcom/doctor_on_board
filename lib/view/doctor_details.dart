import 'package:doctor_on_boarding/common_widget/primary_button.dart';
import 'package:doctor_on_boarding/common_widget/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_on_boarding/app_color.dart';



class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body:   SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(31.r,102.r,31.r,31.r),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 43.w,
                                  height: 43.w,
                                  child: Image.asset("assets/weather.png")),
                              SizedBox(height: 10.h,),

                              Text('13°C',
                              style: TextStyle(
                                fontSize: 36.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.orange
                              ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.arrow_drop_down,
                                  color: Colors.white,
                                    size: 10.h,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Delhi',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ),
                         SizedBox(width: 15.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text('Hey,',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white
                              ),),
                            Text('Login Now',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white
                              ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Image.asset("assets/wave.png"),
                    SizedBox(height: 20.h,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Sign in With',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                    ),
                    SizedBox(height: 20.h,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Image.asset("assets/google.png",
                            width: 70.h,
                            height: 70.h,
                            ),
                          ),
                          SizedBox(width: 20.w,),
                          InkWell(
                            onTap: (){

                            },
                            child: Image.asset("assets/facebook.png",
                              width: 70.h,
                              height: 70.h,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 60.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/user.png"),
                      hintText: "User Name ( Email )",
                    ),
                    SizedBox(height: 25.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/phone.png"),
                      hintText: "User Name ( Mobile )",
                    ),

                    SizedBox(height: 25.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/password.png"),
                      hintText: "User Name ( Mobile )",
                    ),
                    SizedBox(height: 15.h,),
                    Container(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){

                        },
                        child: Text("Forgot Password?",style:
                          TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp
                          ),),
                      ),
                    ),
                    SizedBox(height: 70.h,),
                    PrimaryButton(
                      title: "SIGN IN",
                      onPressed: (){

                      },

                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
