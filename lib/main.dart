import 'package:flutter/material.dart';
import 'package:caculator/screen.dart';
//import 'package:flutter/rendering.dart';
import 'package:caculator/button.dart';
void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'caculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  //Screen temp = new Screen(key:screenKey);
  //void _incrementCounter() {
  //  setState(() {
  //    // This call to setState tells the Flutter framework that something has
  //    // changed in this State, which causes it to rerun the build method below
  //    // so that the display can reflect the updated values. If we changed
  //    // _counter without calling setState(), then the build method would not be
  //    // called again, and so nothing would appear to happen.
  //    _counter++;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //appBar: AppBar(
      //  // Here we take the value from the MyHomePage object that was created by
      //  // the App.build method, and use it to set our appbar title.
      //  title: Text(widget.title),
      //),
      body: Container(
        decoration: new BoxDecoration(
            color: Colors.black54
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Screen(key:screenKey),
            SizedBox(
                height: 20,
            ),
            Piece(
                Button(
                    (){
                        screenKey.currentState?.innumber('C');
                    }, 
                    'C'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('%');
                    }, 
                    '%'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('x');
                    }, 
                    '<<'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('/');
                    }, 
                    '/'
                )
            ),
            SizedBox(
                height: 20,
            ),

            Piece(
                Button(
                    (){
                        screenKey.currentState?.innumber('7');
                    }, 
                    '7'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('8');
                    }, 
                    '8'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('9');
                    }, 
                    '9'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('X');
                    }, 
                    'X'
                )
            ),
            SizedBox(
                height: 20,
            ),
            Piece(
                Button(
                    (){
                        screenKey.currentState?.innumber('4');
                    }, 
                    '4'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('5');
                   }, 
                    '5'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('6');
                    }, 
                    '6'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('-');
                    }, 
                    '-'
                ),
            ),
            SizedBox(
                height: 20,
            ),
            Piece(
                Button(
                    (){
                        screenKey.currentState?.innumber('1');
                    }, 
                    '1'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('2');
                   }, 
                    '2'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('3');
                    }, 
                    '3'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('+');
                    }, 
                    '+'
                ),
            ),
            SizedBox(
                height: 20,
            ),
            Piece(
                Button(
                    (){
                        screenKey.currentState?.innumber('0');
                    }, 
                    '0'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('.');
                   }, 
                    '.'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('A');
                    }, 
                    'A'
                ),
                Button(
                    (){
                        screenKey.currentState?.innumber('=');
                    }, 
                    '='
                ),
            ),
                        
            SizedBox(
                height: 20,
            ),

            //GridView.count(
            //    crossAxisCount: 2,
            //    children: List.generate(
            //        9, 
            //        (index) =>Center(
            //            child: ElevatedButton(
            //                onPressed: (){
            //                    screenKey.currentState?.innumber();
            //                },
            //                child: Text('$index'),
            //            ),
            //        ),
            //    ) 
            //)
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: () =>screenKey.currentState?.innumber('x'),
      //  tooltip: 'Increment',
      //  child: Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
