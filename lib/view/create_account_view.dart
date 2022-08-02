
import 'package:doctor_on_boarding/common_widget/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_on_boarding/app_color.dart';



class CreateAccountView extends StatelessWidget {
   CreateAccountView({Key? key}) : super(key: key);
  final controller = TextEditingController();
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
                padding: EdgeInsets.fromLTRB(25.r,49.r,31.r,31.r),
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

                            Text('New Here?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white
                              ),),
                            Text('Create Account',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 25.sp,
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
                      child: Text('Sign up With',
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
                       hintText: "User Name",
                      controller: controller,
                    ),
                    SizedBox(height: 25.h,),
                    const   PrimaryTextField(
                      prefixIcon: Icon(Icons.mail_rounded,color: Colors.white,),
                      hintText: "Email",
                    ),
                    SizedBox(height: 25.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/phone.png"),
                      hintText: "Number",
                    ),

                    SizedBox(height: 25.h,),
                    const PrimaryTextField(
                      prefixIcon:Icon(Icons.location_city,color: Colors.white,),
                      hintText: "City",
                    ),

                    SizedBox(height: 25.h,),
                    const PrimaryTextField(
                      prefixIcon: Icon(Icons.add_location_alt,color: Colors.white,),
                      hintText: "State",
                    ),

                    SizedBox(height: 25.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/password.png"),
                      hintText: "Password",
                    ),SizedBox(height: 25.h,),

                    PrimaryTextField(
                      prefixIcon: Image.asset("assets/password.png"),
                      hintText: "Re-Enter Password",
                    ),
                    SizedBox(height: 60.h,),
                    Container(
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
                        child: Text('SIGN UP',style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color:Colors.white
                        ) ,),
                      ),

                    ),
                    SizedBox(height: 20.h,),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have account?',
                          style: TextStyle(fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Sign in',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                            // can add more TextSpans here...
                          ],
                        ),),
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
