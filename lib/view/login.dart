
import 'package:doctor_on_boarding/common_widget/primary_button.dart';
import 'package:doctor_on_boarding/common_widget/primary_text_field.dart';
import 'package:doctor_on_boarding/view/create_account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_on_boarding/app_color.dart';

import 'opt_View.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {



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

                          validator: (value){
                            if(value!.isEmpty){
                              return  'Wrong Email';
                            }
                            else{
                              return null;
                            }
                          }
                      ),
                      SizedBox(height: 25.h,),

                      PrimaryTextField(
                        maxLength: 10,
                        prefixIcon: Image.asset("assets/phone.png"),
                        hintText: "User Name ( Mobile )",
                          validator: (value){
                            if(value!.isEmpty){
                              return  'Wrong Phone Number';
                            }
                            else    if(value.length<10){
                              return  'Wrong Phone Number';
                            }
                            else{
                              return null;
                            }
                          }
                      ),

                      SizedBox(height: 25.h,),

                      PrimaryTextField(
                          obscure: true,
                        prefixIcon: Image.asset("assets/password.png"),
                        hintText: "Password",
                          validator: (value){
                            if(value!.isEmpty){
                              return  'Wrong Password';
                            }

                            else{
                              return null;
                            }
                          }
                      ),
                      SizedBox(height: 15.h,),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
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
                      ),
                      SizedBox(height: 50.h,),
                      PrimaryButton(
                        onPressed:( ){
                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const OtpView()),
                            );
                          }
                        },
                        title: "SIGN IN",
                      ),
                      SizedBox(height: 20.h,),
                      Wrap(
                        children: [
                          Text("New User? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp
                          ),),

                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  CreateAccountView()),
                              );
                            },
                            child: Text("Create Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                fontWeight: FontWeight.bold
                              ),),
                          )
                        ],
                      )
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


