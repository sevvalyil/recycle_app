import 'package:flutter/material.dart';
import 'package:recycle_app/services/widget_support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 150),
            Image.asset("images/image1.png"),
            SizedBox(height: 50,),
            Text("Recycle your waste product !",style: AppWidget.healinetextstyle(28),),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text("Easily collect household waste and generate less waste",style: AppWidget.normaltextstyle(22),),
            ),
            SizedBox(height: 50,),
            Material(
              elevation: 15,
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                color: Colors.green,
                  borderRadius: BorderRadius.circular(40)
              ),
                child: Center(child: Text("Get Started",style: AppWidget.whitetextstyle(24),)),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
