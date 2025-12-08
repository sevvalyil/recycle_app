import 'package:flutter/material.dart';
import 'package:recycle_app/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 80,left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  children: [
                    Text("Hello, ",style: AppWidget.healinetextstyle(30),),
                    Text("Şevval",style: AppWidget.greentextstyle(30),),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/profile.jpg",height: 60, width:60,),)),
                  ],
                ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/home.png"))
              ),
              SizedBox(height: 30,),
              Text("Categories",style: AppWidget.healinetextstyle(32),),
              SizedBox(height: 20,),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                            padding:EdgeInsets.all(8) ,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey,width: 2),
                            ),
                            child: Image.asset("images/plasti.png",height: 70,width: 70,fit: BoxFit.cover,)),
                            Text("Plastic",style: AppWidget.normaltextstyle(20),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                            padding:EdgeInsets.all(8) ,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey,width: 2),
                            ),
                            child: Image.asset("images/paper.jpg",height: 70,width: 70,fit: BoxFit.cover,)),
                        Text("Paper",style: AppWidget.normaltextstyle(20),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                            padding:EdgeInsets.all(8) ,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey,width: 2),
                            ),
                            child: Image.asset("images/battery.png",height: 70,width: 70,fit: BoxFit.cover,)),
                        Text("Battery ",style: AppWidget.normaltextstyle(20),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                            padding:EdgeInsets.all(8) ,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey,width: 2),
                            ),
                            child: Image.asset("images/glass.png",height: 70,width: 70,fit: BoxFit.cover,)),
                        Text("Glass",style: AppWidget.normaltextstyle(20),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Pending Request",style: AppWidget.healinetextstyle(32),),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Colors.green,size: 30,),
                        Text("Main market , Istanbul",style: AppWidget.normaltextstyle(20),)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 20,),
                    Image.asset("images/chips.png",height: 120,width: 120,fit: BoxFit.cover,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.layers,color: Colors.green,size: 30,),
                        SizedBox(width: 10,),
                        Text("3",style: AppWidget.normaltextstyle(20),)
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              SizedBox(height: 120,)
            ],
          ),
        ),
      ),
    );
  }
}
