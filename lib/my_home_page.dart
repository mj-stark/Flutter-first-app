import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: const Color.fromARGB(255, 255, 255, 255),
    ));

    return MaterialApp(
        title: 'Flutter layout demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(
          children: [
            Container(
              height: 1000,
              width: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.redAccent,
                Colors.lightBlueAccent,
              ])),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 150, top: 100)),
                  Text("Hello.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Welcome !",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  Container(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 50)),
                        SizedBox(height: 120),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 270, left: 20,right: 20),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),border: Border.all(width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50, left: 0)),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.check),
                                label: Text(
                                  "Username",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off),
                                label: Text(
                                  "Password",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top:10, right: 20),child: Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      
                      ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Padding(padding: EdgeInsets.only(top: 20),
                    child: Row(children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.redAccent,
                            Colors.blueAccent,
                          ]),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),)],),
                      )
                    ],)
                    )
                   ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 75),
                    child:Text("Don't have a account?") ,),
                  ],),
                  Padding(padding: EdgeInsets.only(right: 0),child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [Text('Create a account',style: TextStyle(fontWeight: FontWeight.bold),)],),)
                  ]
                ),
              ),
            ),
          ],
        )));
  }
}


