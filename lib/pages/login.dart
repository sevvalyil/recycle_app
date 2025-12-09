import 'package:flutter/material.dart';
import 'package:recycle_app/services/auth.dart';
import 'package:recycle_app/services/widget_support.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          AuthMethods().signInWithGoogle(context);
        },
        child: Container(
          child: Column(
            children: [
              Center(
                child:Image.asset(
                "images/recycle.png",height: 300,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
              )
              ),
              SizedBox(height: 10,),
              Image.asset("images/recycle2.png",height: 120,width: 120,fit: BoxFit.cover,),
              SizedBox(height: 10,),
              Text("Reduce. Reuse. Recycle.",style: AppWidget.healinetextstyle(25),),
              SizedBox(height: 10,),
              Text("Repeat!",style: AppWidget.greentextstyle(32),),
              SizedBox(height: 50,),
              Text("Every item you recycle \n make a difference!",textAlign: TextAlign.center,style: AppWidget.normaltextstyle(20),),
              SizedBox(height: 10,),
              Text("Get started!",style: AppWidget.greentextstyle(24),),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(right: 20,left: 20),
                height: 80,
                decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // gölge rengi
                      spreadRadius: 3,                     // yayılma miktarı
                      blurRadius: 7,                       // bulanıklık
                      offset: Offset(0, 3),                // x ve y yönünde kayma
                    ),
                  ],
                ),
        
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30),),
                      child: Image.asset("images/google.png",height: 50,width: 50,fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 20,),
                    Text("Sign in with Google",style: AppWidget.whitetextstyle(25),)
                  ],
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
