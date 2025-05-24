import 'package:flutter/material.dart';

import '../../widget/buildButton.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _outpurt = '0';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttomPress(String value){
    print(value);
    setState(() {
      if(value == 'C'){
        _outpurt = '0';
        _input = '0';
        _ope= '';
        num1 = 0;
        num2 = 0;
      }else if(value == '='){
        num2 = double.parse(_input);
        if(_ope == '+'){
          _outpurt = (num1+num2).toString();
        }else if(_ope == '-'){
          _outpurt = (num1-num2).toString();

        }else if(_ope == '*'){
          _outpurt = (num1*num2).toString();

        }else if(_ope == '÷'){
          _outpurt = (num2 !=0) ? (num1/num2).toString() : 'Error';

        }
        _input = _outpurt;
      }else if(['+','-','*','÷'].contains(value)){
        num1 = double.parse(_input);
        _ope = value;
        _input= '';

      }else{
          if(_input == '0'){
            _input = value;
          }else{
            _input += value;

          }
          _outpurt = _input;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(
                _outpurt,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              buildButton(onClick:()=> buttomPress('7'), text: '7',),
              buildButton(onClick: ()=> buttomPress('8'), text: '8',),
              buildButton(onClick: ()=> buttomPress('9'), text: '9',),
              buildButton(onClick: ()=> buttomPress('÷'), text: '÷',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              buildButton(onClick: ()=> buttomPress('4'), text: '4',),
              buildButton(onClick: ()=> buttomPress('5'), text: '5',),
              buildButton(onClick: ()=> buttomPress('6'), text: '6',),
              buildButton(onClick: ()=> buttomPress('*'), text: '*',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              buildButton(onClick:()=> buttomPress('1'), text: '1',),
              buildButton(onClick: ()=> buttomPress('2'), text: '2',),
              buildButton(onClick: ()=> buttomPress('3'), text: '3',),
              buildButton(onClick: ()=> buttomPress('-'), text: '-',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              buildButton(onClick: ()=> buttomPress('C'), text: 'C',color: Colors.red,),
              buildButton(onClick:()=> buttomPress('0'), text: '0',),
              buildButton(onClick: ()=> buttomPress('='), text: '=',color: Colors.green,),
              buildButton(onClick: ()=> buttomPress('+'), text: '+',color: Colors.orange,),

            ],
          ),
        ],
      ),
    );
  }
}

