import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(title: "Test APP"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final List<Color> _color = [Colors.blue, Colors.red, Colors.green, Colors.yellow,Colors.brown,Colors.purple,Colors.pink,Colors.black];
  var index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Center(child: Text("Test Application"),),
              backgroundColor:_color[index % _color.length],
      ),
      backgroundColor: _color[index % _color.length],
        body: GestureDetector(
            onTap: () {
              setState(() {
                index++;
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent,
                  child:  Center(
                    child: AnimatedTextKit(
                      totalRepeatCount: 50,
                      animatedTexts: [
                        FadeAnimatedText(
                          'Hello there',
                          textStyle: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 8,
                              wordSpacing: 20,
                          ),
                    ),
                        ScaleAnimatedText(
                          'My name is: khaled mohamed',
                          duration: Duration(milliseconds: 4000),
                          textStyle:
                          const TextStyle(fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 8,
                            ),
                        ),
                      ],
                    ),
                  ),
                  ),
              ],
            ),
        ),
    );
  }}