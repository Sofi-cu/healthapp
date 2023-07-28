import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  //const NewPage({super.key});
  var username;
  var password;

  Dashboard(String text, String text2);
  dashboard(String username, String password) {
    this.username = username;
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/Notify.png',scale: 2.0,),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Namaste S-Users, ',style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Text(username ?? '',style: TextStyle(color:Colors.black45,fontSize: 22,fontWeight: FontWeight.bold ),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Welcome to HealthCare "),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/Covid.png",scale: 2.5,),
                        Text("Report Covid-19"),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/Report.png",scale: 2.5,),
                        Text("Report Incident"),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/Imergency.png",scale: 2.5,),
                        Text("Emergency Number"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/News.png",scale: 2.5,),
                        Text("News"),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/notice.png",scale: 2.5,),
                        Text("Notice"),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/FM.png",scale: 2.5,),
                        Text("Fm"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/GPS.png",scale: 2.5,),
                        Text("Hospital NearBy"),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/E-complaint.png",scale: 2.5,),
                        Text("e-admit form"),
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/Clearance.png",scale: 2.5,),
                        Text("Clearance Bill"),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
