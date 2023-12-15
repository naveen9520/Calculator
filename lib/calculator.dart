import 'dart:math';

import 'package:flutter/material.dart';

class cals extends StatefulWidget {
  const cals({super.key});

  @override
  State<cals> createState() => _calsState();
}

class _calsState extends State<cals> {


  Widget customOutlineButton(String val){
    return Expanded(child: OutlinedButton(
      onPressed: ()=>btnClicked(val),
      child: Text(val, style: TextStyle(fontSize: 45.0,color: Colors.black),
      ),
    ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Calculator App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body:
      Column(
        children: [
          SizedBox(height: 300,),
          Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.grey,
                alignment: Alignment.centerRight,
                // padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                child: Text(text,
                  // _output,
               style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold,color: Colors.amber),
                ),
              ),
            ],
          ),
          SizedBox(height: 100,),
          Row(
            children: [
              customOutlineButton('9'),
              customOutlineButton('8'),
              customOutlineButton('7'),
              customOutlineButton('+'),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              customOutlineButton('6'),
              customOutlineButton('5'),
              customOutlineButton('4'),
              customOutlineButton('-'),
            ],
          ),
          SizedBox(height:30,),
          Row(
            children: [
              customOutlineButton('3'),
              customOutlineButton('2'),
              customOutlineButton('1'),
              customOutlineButton('x'),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              customOutlineButton('c'),
              customOutlineButton('0'),
              customOutlineButton('='),
              customOutlineButton('/'),
              customOutlineButton('√'),
            ],
          ),
        ],
      ),

    );
  }
  late String res, text ="";
  late int first,second;
  late String opp;
  void btnClicked(String btnText)
  {
    if (btnText == 'c'){
      res = "";
      text="";
      // first = 0;
      // second = 0;
    }else if(btnText== '+' ||btnText== '-'|| btnText== 'x'||btnText== '/'||btnText=='√'){
     first = int.parse(text);
     res="";
     opp=btnText;
    }
    else if(btnText == "="){
      second = int.parse(text);
      if (opp == "+"){
        res = (first + second ). toString();
      }
      if (opp == "-"){
        res = (first - second ). toString();
      }
      if (opp == "x"){
        res = (first * second ). toString();
      }
      if (opp == "/"){
        res = (first / second ). toString();
      }if(opp == "√"){
        res = sqrt(first).toString();
      }
    }
    else
      {
        res = int.parse(text + btnText).toString();
      }
    // res =text+btnText;
    setState(() {
      text = res;

    });
  }
}
