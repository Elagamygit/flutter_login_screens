// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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

              Text("Sign up",style: TextStyle(fontSize: 33,fontFamily: "myfont"),),

              SizedBox(height: 27,),

              SvgPicture.asset("assets/icons/signup.svg",height: 200,),

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
                 child: Text("sign up",style: TextStyle(fontSize: 23),),
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
                  Text("Already have an account?  "),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text("Log in",style: TextStyle(fontWeight: FontWeight.bold),)),
                ],
              ),

              SizedBox(height: 15,),

              Container(
                width: 266,
                child: Row(
                  children: [
                  Expanded(child: Divider(color: Colors.purple,thickness: 1,)),
                  Text(" OR "),
                  Expanded(child: Divider(color: Colors.purple,thickness: 1,)),
                ],),
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border:Border.all(width: 1,color: Colors.blue) ),
                  child: SvgPicture.asset("assets/icons/facebook.svg",color: Colors.blue,height:27 ,),
                ),
  
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border:Border.all(width: 1,color: Colors.blue) ),
                  child: SvgPicture.asset("assets/icons/google-plus.svg",color: Colors.blue,height:27 ,),
                ),

                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border:Border.all(width: 1,color: Colors.blue) ),
                  child: SvgPicture.asset("assets/icons/twitter.svg",color: Colors.blue,height:27 ,),
                ),
              ],)
            ],),
          ),

          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/signup_top.png",width: 120,)),

          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/main_bottom.png",width: 100,)),

        ]),
      ),
    );
  }
}