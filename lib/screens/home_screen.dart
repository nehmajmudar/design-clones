import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double textSize=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30,bottom: 60),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 7,
                  trackShape: RoundedRectSliderTrackShape(),
                  activeTrackColor: Colors.blue,
                  inactiveTickMarkColor: Colors.grey,
                  thumbColor: Colors.black,
                  overlayColor: Colors.red,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 14.0,
                    pressedElevation: 8.0,
                  ),
                ),
                child: Slider(
                    value: textSize,
                    label: double.parse((textSize).toStringAsFixed(2)).toString(),
                    divisions: 100,
                    min: 20,
                    max: 100,
                    onChanged: (double size){
                      setState(() {
                        textSize=size;
                      });
                    }
                ),
              )
            ),
            Text("Text",style: TextStyle(fontSize: textSize,color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
