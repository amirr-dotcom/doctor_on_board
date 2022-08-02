
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_on_boarding/app_color.dart';

import 'create_account_view.dart';




class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body:   SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(31.r,49.r,31.r,31.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back,color: Colors.white,size: 34.h,),
                    SizedBox(
                      height: 19.h,
                    ),
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
                            Text('OTP Sent!',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.normal,
                                  color:Colors.white
                              ),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Image.asset("assets/wave.png"),
                    SizedBox(height: 28.h,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enter the OTP sent to +91 9876543210 &',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),textAlign: TextAlign.start,),
                          SizedBox(height: 5.h,),
                          Text('xyy2022@gmail.com',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),textAlign: TextAlign.start,),
                          SizedBox(height: 5.h,),
                          Text.rich(
                            TextSpan(
                              style: TextStyle(fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'Didn’t you enter the correct number & Email?',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    )),
                                // can add more TextSpans here...
                              ],
                            ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 87.h,),
                    OtpTextField(
                      textStyle: TextStyle(
                        fontSize: 36.sp
                      ),
                      numberOfFields: 6,
                      borderColor: Colors.white,
                      focusedBorderColor: Colors.white,
                  //    focusedBorderColor: Color(0xFF512DA8),
                      showFieldAsBox: false,
                      cursorColor:Colors.white,
                      fillColor:Colors.white,
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),
                    SizedBox(height: 40.h,),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Didn’t recieve? ',
                          style: TextStyle(fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white70),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Send Again',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                            // can add more TextSpans here...
                          ],
                        ),),
                    ),
                    SizedBox(height: 60.h,),
                    Row(
                      children: [
                        const   Expanded(child:  SizedBox()),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '00:00',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              // can add more TextSpans here...
                            ],
                          ),),
                      ],
                    ),
                    SizedBox(height: 13.h,),
                    InkWell(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  CreateAccountView()),
                        );
                      },
                      child: Container(
                        height: 67.h,
                        width: 368.h,
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
                          child: Text('VERIFY',style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color:Colors.white
                          ) ,),
                        ),
                      ),
                    ),
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
