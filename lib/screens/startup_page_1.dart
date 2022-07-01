import 'package:flutter/material.dart';

class StartupPage1 extends StatefulWidget {
  final String imageUrl;
  const StartupPage1({Key? key,required this.imageUrl}) : super(key: key);

  @override
  _StartupPage1State createState() => _StartupPage1State();
}

class _StartupPage1State extends State<StartupPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 180),
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(widget.imageUrl,fit: BoxFit.cover,)
            ),
            Container(
              width: (MediaQuery.of(context).size.width)-30,
              height: 40,
              alignment: Alignment.center,
              child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: Color(0xFFfea36b),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            )
          ],
        ),
      ),
    );
  }
}
