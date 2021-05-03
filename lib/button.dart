import 'package:flutter/material.dart';
typedef Clickcallback = void Function();
class Button extends StatelessWidget {
    late final String name;
    //@required
    late final Clickcallback onPress;
    Button(Clickcallback onPress, String name){
        this.onPress=onPress;
        this.name = name;
    }
    @override
    Widget build(BuildContext context){
        return ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(10))
            ),
            onPressed: (){
                onPress();
                }, 
            child: Text(
                name,
                style: TextStyle(
                    fontSize: 45,
                ),
            ),
        );
    }
}
class Piece extends StatelessWidget{
    late final Button a;
    late final Button b;
    late final Button c;
    late final Button d;
    Piece(Button a, Button b,Button c,Button d){
        this.a=a;
        this.b=b;
        this.c=c;
        this.d=d;
    }
    @override
    Widget build(BuildContext context){
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                a,
                b,
                c,
                d,
            ],
        );
    }

}
