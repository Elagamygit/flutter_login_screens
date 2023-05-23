// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(height: 27,),

              Text("Login",style: TextStyle(fontSize: 33,fontFamily: "myfont"),),

              SizedBox(height: 27,),

              SvgPicture.asset("assets/icons/login.svg",height: 200,),

              SizedBox(height: 27,),

              Container(
                width: 266,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.purple[100]),
                child: TextField(decoration: InputDecoration(border: InputBorder.none,
                 hintText: "User name",
                 icon: Icon(Icons.person)
                ),),
              ),

              SizedBox(height: 27,),

              Container(
                width: 266,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.purple[100]),
                child: TextField(decoration: InputDecoration(border: InputBorder.none,
                 hintText: "Password",
                 icon: Icon(Icons.lock),
                 suffixIcon: Icon(Icons.visibility)
                ),),
              ),

              SizedBox(height: 27,),

              SizedBox(
                width: 266,
                child: ElevatedButton(onPressed: (){},
                 child: Text("log in",style: TextStyle(fontSize: 23),),
                 style: (ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  shape: (MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10))
                 )),
                 ),),

              SizedBox(height: 27,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?  "),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),)),
                ],
              ),
            ],),
          ),

          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png",width: 120,)),

          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/login_bottom.png",width: 120,)),

        ]),
      ),
    );
  }
}
