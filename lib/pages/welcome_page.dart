import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:login/constants/routes.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000)
            ),

            textAlign: TextAlign.left),
            const SizedBox(height: 20,),
            Text("MaxPens",style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xff575DFB)
            ),
            ),
            Text("A place where you can track all \nyour expenses and incomes ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Color(0xff000000)
            ),),
            const SizedBox(height: 30,),
            Text("Let's Get Started........",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.dashboard);
                print('Do you want continue with Google');

              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical:12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black,width: 1.5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Logo.png",
                    height: 24,
                    width: 24),
                    const SizedBox(width: 10),
                    const Text("Continue with Google",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.dashboard);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black,width: 1.5)
                ),
                child: GestureDetector(
                     onTap: (){
                       Get.toNamed(Routes.registerPage);
                     },
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const Text("Continue with Email  ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      Image.asset("assets/images/Vector.png",
                        height: 19.18,
                        width: 19.2,),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    RichText(text:
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),

                      children: [
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            color: Color(0xff575DFB),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                           Get.toNamed(Routes.loginPage);

                           // print('do you want to login');
                            }
                        )
                      ]
                    ),
                    )


                  ],
                ),
              ],
            )

          ],
        ),
      )
    );
  }
}
