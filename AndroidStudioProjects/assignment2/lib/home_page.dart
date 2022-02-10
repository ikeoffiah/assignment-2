import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Container(
        width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30),
        decoration:BoxDecoration(

          gradient: LinearGradient(
            begin:Alignment.topCenter,
            colors: [
              Color.fromRGBO(0, 128, 0, 1),
              Color.fromRGBO(0, 128, 0, 0.5),
              Color.fromRGBO(0, 128, 0, 0.4)
            ]

          )

        ),
        child: Column(
          children: <Widget>[
            Container(

              child:Center(
                child: Image.asset('assets/vasef.png',),
              )
            ),



            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),


              ),

            child: Padding(
              padding: EdgeInsets.all(20),

              child: Column(
                children: <Widget>[


                  SizedBox(height: 40,),
                  Text('Welcome back',

                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),),
                  Text('Login to your account',

                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),),
                  SizedBox(height: 40,),
                  Container(

                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 128, 0, 1),
                            blurRadius: 20.0,
                            offset: Offset(0,10)
                        )
                      ],

                    ),
                    child: TextField(
                      decoration: InputDecoration(

                          border: InputBorder.none,
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 20,
                          )
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 128, 0, 1),
                              blurRadius: 20.0,
                              offset: Offset(0,10)
                          )
                        ]
                    ),
                    child: TextField(
                      obscureText: true,

                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 20)

                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(width: MediaQuery.of(context).size.width ,

              child:ElevatedButton(
                        onPressed: () {},
    style: ElevatedButton.styleFrom(
    primary: Color.fromRGBO(0, 128, 0, 1),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    elevation: 15.0,
    ),
    child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Text(
    'Login',
    style: TextStyle(fontSize: 20),
    ),
    ),
    ),
    )





                ],
              ),
            ),
            ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
