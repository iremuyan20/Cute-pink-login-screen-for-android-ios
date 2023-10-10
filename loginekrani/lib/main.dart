import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranBilgisi.size.height;
    final double ekrangenisligi = ekranBilgisi.size.width;


    return Scaffold(
     backgroundColor: Colors.pinkAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(
                padding:EdgeInsets.only(bottom: ekranyuksekligi/20),
                child: SizedBox(
                    width: ekrangenisligi/3,
                    height: ekranyuksekligi/5,
                    child: Image.asset("images/iyutechlogo.png")
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi/30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )
                  ) ,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                  ) ,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi/30),
                child: SizedBox(
                  width: ekrangenisligi/1.2,
                  height: ekranyuksekligi/12,
                  child: ElevatedButton(
                    child: Text("Login",style: TextStyle(fontSize: ekrangenisligi/24),),
                    onPressed: (){
                      print("Logged in");
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.pinkAccent,

                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Help selected");
                },
                child: Text("Help",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: ekrangenisligi/30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
