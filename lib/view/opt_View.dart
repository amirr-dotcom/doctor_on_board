
import 'package:doctor_on_boarding/common_widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_on_boarding/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'create_account_view.dart';


class OtpView extends StatefulWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body:   SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(31.r,20.r,31.r,31.r),
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
                      SizedBox(height: 50.h,),
                      PinCodeTextField(

                        appContext: context,

                        length: 6,
                        obscureText: false,
                        // obscuringCharacter: '*',
                        // obscuringWidget: FlutterLogo(
                        //   size: 24,
                        // ),
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 6) {
                            return "OTP must be filled completely.";
                          }
                          else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          inactiveFillColor: AppColor.orange,
                          inactiveColor: Colors.white,
                          activeColor: Colors.transparent,
                          selectedColor: Colors.transparent,
                          selectedFillColor: Colors.transparent,
                          activeFillColor:AppColor.orange,
                          errorBorderColor: Colors.transparent,
                          shape: PinCodeFieldShape.underline,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 50,
                        ),
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        //controller: modal.otpController.otpController.value,
                        keyboardType: TextInputType.number,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 5,
                          )
                        ],
                        onCompleted: (v)  {

                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        onChanged: (value) {

                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                      SizedBox(height: 40.h,),
                      Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text("Didn't Receive? ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp
                              ),),

                            InkWell(
                              onTap: (){

                              },
                              child: Text("Send Again",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.grey,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Center(
                        child: Text("Sending OTP ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor.orange,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold
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
                      PrimaryButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  CreateAccountView()),
                          );
                        },
                        title: "VERIFY",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

