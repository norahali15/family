import 'package:flutter/material.dart';
import 'home_page.dart';
import 'newaccount_page.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'sign_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return  Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
        children: [
         Container(
        width: w,
        height: h*0.3,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        "images/15.jpg"
    ),
            fit: BoxFit.cover
        ),
        ),
        ),
          Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 70,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    "Sign into your account",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.deepPurple.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                          prefixIcon: const Icon(Icons.email_outlined,color: Colors.grey,),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.0
                              )
                          ),
                          enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.deepPurple.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "password",
                          prefixIcon: const Icon(Icons.password,color: Colors.grey,),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.0
                              )
                          ),
                          enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              )
          ),
           Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const Signpassword(),));
                  },
                child:  const Text(
                 "Forgot your Password?",
             style:  TextStyle(
            fontSize: 17,
             color: Colors.white
            ),
            ),

          )
        ]
         ),
          const SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage(
                      "images/13.jpg"
                  ),
                  fit: BoxFit.cover
              ),
            ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomePage(),));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(height:w*0.1),
          RichText(text:
            TextSpan(
            text: "Don't have an account?",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19
            ),
            children: [
               TextSpan(
              text: " Create",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                fontWeight: FontWeight.bold
              ),
                 recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> const NewAccountPage())
          )
              ]
          )
          )
        ],
        ),
    );
  }
}
