import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _opacity = 0.0;
  //var _width = 200.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(" Animated Opacity Example"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_opacity==0.0) {
                _opacity = 1.0;
              } else {
                _opacity = 0.0;
              }
            });
          },
          child: AnimatedOpacity(
            opacity:_opacity ,
            duration: Duration(seconds: 2),
            curve: Curves.bounceInOut,

            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepOrange,
                        blurStyle: BlurStyle.inner,
                       // spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(4, 4)),
                    BoxShadow(
                        color: Colors.pink,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        offset: Offset(-3, -3),
                    )
                  ]
              ),
              child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.network(
                        "https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
