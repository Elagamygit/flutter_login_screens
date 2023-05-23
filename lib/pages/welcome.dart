// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top:27,),
                      child: Text("welcome",style: TextStyle(fontSize: 33, fontFamily: "myfont"),),
                    ),

                    SizedBox(height: 27,),

                    SvgPicture.asset("assets/icons/chat.svg",height: 350,),
                    
                    SizedBox(height: 27,),

                    SizedBox(
                      width: 266,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      }, 
                      child:Text("Log in"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[700]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    SizedBox(
                      width: 266,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, "/signup");
                      }, 
                      child:Text("Sign up",style: TextStyle(color: Colors.grey[800]),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      ),
                      ),
                    )
                    
                  ],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                ),
                bottom: 0,
                left: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
