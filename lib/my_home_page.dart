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
      statusBarColor: Colors.red,
    ));

    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text("Manoj"),
              const SizedBox(width: 8),
              Icon(Icons.abc_sharp),
              Spacer(),
              Icon(Icons.shopping_bag, size: 30),
              const SizedBox(width: 16),
              Icon(Icons.search, size: 30),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 192, 163, 163),
        ),
        body: Container(
          child: Column( // Wrap both rows in a Column
            children: [
              Row(
                children: [
                  SizedBox(height: 100,),
                  Padding(padding: EdgeInsets.only(left: 40)),
                  Expanded(
                    flex: 2,
                    child: SearchBar(),
                  ),
                  Padding(padding: EdgeInsets.only(right: 40)),
                ],
              ),
              Row(
                children: [
                  
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 140)),
                  Text("Hello Everyone", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
