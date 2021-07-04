import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
        home: ButtonCode()
    );
  }
}

class ButtonCode extends StatefulWidget {
  const ButtonCode({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ButtonCode> {

  Color bulbColor = Colors.red;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Flutter Bulb Color'),
        backgroundColor: bulbColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.lightbulb,
              color:bulbColor,
              size: 100,
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap:(){
                setState((){
                  bulbColor = Colors.red;
                } );
              },
              child: Container(
                width: 200,

                child:Center(
                  child: Text("Red Button",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                color: Colors.red,
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap:(){
                setState((){
                  bulbColor = Colors.blue;
                });
              },
              child: Container(
                width: 200,
                child:Center(
                  child: Text("Blue Button",style:TextStyle(

                    color: Colors.white,
                    fontSize: 20,

                  ),
                  ),

                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap:(){
                setState(()
                {
                  bulbColor = Colors.green;
                });
              },
              child: Container(
                width: 200,
                child:Center(
                  child: Text("Green Button",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                color: Colors.green,
              ),
            )
      ],
      )
      ),
    );
  }
}


