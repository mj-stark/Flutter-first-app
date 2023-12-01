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
      statusBarColor: Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              height: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 35, 66, 92),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Your name",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.notification_add,
                    size: 35,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  'Recently Added',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                                      'assets/images/Screenshot 2023-12-01 163809.png',
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height: 120,
                                    ),
                  Image.asset(
                                      'assets/images/Screenshot 2023-12-01 163826.png',
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height: 120,
                                    ),
                  Image.asset(
                                      'assets/images/Screenshot 2023-12-01 163833.png',
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height: 120,
                                    ),
                  Image.asset(
                                      'assets/images/Screenshot 2023-12-01 163843.png',
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height: 120,
                                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
