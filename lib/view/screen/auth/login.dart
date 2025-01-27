
import 'package:ecommercecourse/controller/auth/login_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/alertexitapp.dart';
import 'package:ecommercecourse/core/functions/validinput.dart';
import 'package:ecommercecourse/view/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommercecourse/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const LogoAuth(),
                      const SizedBox(height: 20),
                      CustomTextTitleAuth(text: "Welcome Back"),
                      const SizedBox(height: 10),
                      CustomTextBodyAuth(text:  "Sign In Your Email And Password Or  Continue With Social Media"),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        mycontroller: controller.email,
                        hinttext: "Enter Your Email",
                        iconData: Icons.email_outlined,
                        labeltext: "Email",
                        // mycontroller: ,
                      ),
                      GetBuilder<LoginControllerImp>(
                        builder: (controller) => CustomTextFormAuth(
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 3, 30, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "Enter Your Password",
                          iconData: Icons.lock_outline,
                          labeltext: "Password",
                          // mycontroller: ,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                      
                        },
                        child: Text(
                          "Forget Password",
                          textAlign: TextAlign.right,
                        ),
                      ),
                      CustomButtomAuth(
                          text: "Sign In",
                          onPressed: () {
                            controller.login();
                          }),
                      const SizedBox(height: 40),
                  /*   CustomTextSignUpOrSignIn(
                        textone: "16".tr,
                        texttwo: "17".tr,
                        onTap: () {
                          controller.goToSignUp();
                        },
                      )*/
                    ]),
                  ),
                )),
          )),
    );
  }
}
