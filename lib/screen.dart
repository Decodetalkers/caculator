import 'package:flutter/material.dart';

GlobalKey<_ScreenState> screenKey = GlobalKey();

class Screen extends StatefulWidget {
 //Screen(this.image,this.text,this.text2);
 //final String image;
 //final String text;
 //final String text2;
 Screen({Key ? key}):super(key:key);
 //final int numbers;
  @override
  _ScreenState createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  //late final String image;
  //late final String text ;
  //late final String text2 ;
  //Button3(String image ,String text,String text2){
  //  this.image=image;
  //  this.text=text;
  //  this.text2=text2;
  //}
  String numbers ='0';
  String cout = '';
  String forward='0';
  double first=0;
  double second =0;
  int positions=0;
  void innumber(String num){
    setState(() {
        switch(num){
        case 'x' :{
            //if(numbers[numbers.length-1]!=''){
            //    cout='';
            //}
            numbers=numbers.substring(0,numbers.length-1);
            if(numbers.length==0){
                numbers='0';
            }
        }
        break;
        case 'A' :{
            numbers=forward;
        }
        break;
        case '.':{
            if(numbers[numbers.length-1]!='%'&& numbers[numbers.length-1]!='X')
                numbers+=num;
            }
        break;
        case 'X':{
            if(cout==''){
                first=double.parse(numbers.substring(0,numbers.length));
                positions=numbers.length;
                cout='X';
                numbers+=num;
            }
        }
        break;
        case '/':{ 
            if(cout==''){
            first=double.parse(numbers.substring(0,numbers.length));
            positions=numbers.length;
            cout='/';
            numbers+=num;
            }
        }
        break;
        case '%':{ 
            if(cout==''){
            first=double.parse(numbers.substring(0,numbers.length));
            positions=numbers.length;
            cout='%';
            numbers+=num;
            }
        }
        break;
        case '-':{ 
            if(cout==''){
            first=double.parse(numbers.substring(0,numbers.length));
            positions=numbers.length;
            cout='-';
            numbers+=num;
            }
        }
        break;
        case '+':{
            if(cout==''){
            first=double.parse(numbers.substring(0,numbers.length));
            positions=numbers.length;
            cout='+';
            numbers+=num;
            }
        }
        break;
        case '=':{
            if(cout!=''){
            print(first);
            print(numbers.substring(positions+1,numbers.length));
            second=double.parse(numbers.substring(positions+1,numbers.length));
            switch (cout){
                case 'X':{
                    numbers=(first*second).toString();
                }
                break;
                case '/':{
                    numbers=(first/second).toString();
                }
                break;
                case '-':{
                    numbers=(first-second).toString();
                }
                break;
                case '+':{
                    numbers=(first+second).toString();
                }
                break;
                case '%':{
                    numbers=(first%second).toString();
                }
                break;
            }
            print("hello");
            cout='';
            forward=numbers;
            }
        }
        break;
        case 'C':{numbers='0';}
        break;
        default:{
            if(numbers=='0'){
                numbers='';
            }
            numbers=numbers+num;
            print("test");
        }
        break;
        }
    });
  }
  @override
  Widget build(BuildContext context) {
    //...
    return Expanded(child:  Container(
        decoration: new BoxDecoration(
            color: Colors.black87
        ),
        //margin: new EdgeInsets.fromLTRB(10,6, 15, 6),
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.only(right: 10),
        child: Text(
            numbers,
            style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
            ),
        ),

    )
    );
  //...
  }

}


