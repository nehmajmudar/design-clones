import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneThirdSquare extends StatefulWidget {
  const OneThirdSquare({Key? key}) : super(key: key);

  @override
  _OneThirdSquareState createState() => _OneThirdSquareState();
}

class _OneThirdSquareState extends State<OneThirdSquare> {
  TextEditingController numberController1=TextEditingController();
  TextEditingController numberController2=TextEditingController();
  TextEditingController numberController3=TextEditingController();
  TextEditingController numberController4=TextEditingController();

  bool onPressed1=false;
  bool onPressed2=false;
  bool onPressed3=false;
  bool onPressed4=false;

  @override
  void dispose() {
    numberController1.dispose();
    numberController2.dispose();
    numberController3.dispose();
    numberController4.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1)
        ),
        width: ((MediaQuery.of(context).size.width)-30)/3,
        height: ((MediaQuery.of(context).size.width)-30)/3,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0
          ),
          children: [
            numberToInsert(numberController1,onPressed1),
            numberToInsert(numberController2,onPressed2),
            numberToInsert(numberController3,onPressed3),
            numberPresent(7),
            numberPresent(6),
            numberToInsert(numberController4,onPressed4),
            numberPresent(8),
            numberPresent(2),
            numberPresent(5),
          ],
        ),
      )
    );
  }


  Widget numberPresent(int num){
    return Center(
      child: Container(
        height: ((MediaQuery.of(context).size.width)-30)/9,
        width: ((MediaQuery.of(context).size.width)-30)/9,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black,width: 0.3)
        ),
        child: Text(num.toString(),style: TextStyle(fontSize: (((MediaQuery.of(context).size.width)-30)/9)-10,color: Colors.black,fontWeight: FontWeight.w300)),
      ),
    );
  }


  Widget numberToInsert(TextEditingController controller,bool onPress){
    return Container(
      alignment: Alignment.center,
      decoration:  onPress?BoxDecoration(
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.black,width: 0.3)
      ):BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black,width: 0.3)
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          fillColor: Colors.blue.shade100,
          filled: onPress
        ),
        showCursor: false,
        textAlign: TextAlign.center,
        onTap: (){
          setState(() {
            onPress=true;
          });
        },
        style: TextStyle(fontSize: (((MediaQuery.of(context).size.width)-30)/9)-10,color: Colors.black,fontWeight: FontWeight.w300),
      ),
    );
  }
}
