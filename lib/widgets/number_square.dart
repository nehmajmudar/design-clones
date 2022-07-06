import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberSquare extends StatefulWidget {
  final TextEditingController controller;
  final int index;
  const NumberSquare({Key? key,required this.controller,required this.index}) : super(key: key);

  @override
  _NumberSquareState createState() => _NumberSquareState();
}

class _NumberSquareState extends State<NumberSquare> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ((widget.index+1)%3==0 && (widget.index+1)%9!=0 && (widget.index+1)!=21 && (widget.index+1)!=48 && (widget.index+1)!=24 && (widget.index+1)!=51) ? const BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey,width: 0.3),
          right: BorderSide(color: Colors.black,width: 1),
          top: BorderSide(color: Colors.grey,width: 0.3),
          bottom: BorderSide(color: Colors.grey,width: 0.3),
        )
      )
          : ((((widget.index+1)>=19 && (widget.index+1)<=27) || ((widget.index+1)>=46 && (widget.index+1)<=54)) && ((widget.index+1)!=21 && (widget.index+1)!=48 && (widget.index+1)!=24 && (widget.index+1)!=51))? const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey,width: 0.3),
            right: BorderSide(color: Colors.grey,width: 0.3),
            top: BorderSide(color: Colors.grey,width: 0.3),
            bottom: BorderSide(color: Colors.black,width: 1),
          )
      )
          :((widget.index+1)==21 || (widget.index+1)==48 || (widget.index+1)==24 || (widget.index+1)==51)?const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey,width: 0.3),
            right: BorderSide(color: Colors.black,width: 1),
            top: BorderSide(color: Colors.grey,width: 0.3),
            bottom: BorderSide(color: Colors.black,width: 1),
          )
      )
          :const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey,width: 0.3),
            right: BorderSide(color: Colors.grey,width: 0.3),
            top: BorderSide(color: Colors.grey,width: 0.3),
            bottom: BorderSide(color: Colors.grey,width: 0.3),
          )
      ),
      height: ((MediaQuery.of(context).size.width)-20)/9,
      width: ((MediaQuery.of(context).size.width)-20)/9,
      child: TextField(
        controller: widget.controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: const InputDecoration(
          // contentPadding: EdgeInsets.all(3)
          border: InputBorder.none,
        ),
        showCursor: false,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: (((MediaQuery.of(context).size.width)-20)/9)-22,color: Colors.black,fontWeight: FontWeight.w300),
      ),
    );
  }
}
