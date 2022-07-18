import 'package:design_clones/res/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameWidget extends StatefulWidget {
  final String gameImage;
  const GameWidget({Key? key,required this.gameImage}) : super(key: key);

  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/14.7636,
            width: MediaQuery.of(context).size.height/14.7636,
            margin: EdgeInsets.only(right: MediaQuery.of(context).size.height/30.9),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.gameImage),fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Candy Crush Saga",style: TextStyle(color: AppColors.colorWhite,fontSize: 12,fontWeight: FontWeight.bold),),
              Text("King ltd.",style: TextStyle(color: AppColors.colorWhite,fontSize: 10),),
              // Container(
              //   margin: EdgeInsets.only(top: ),
              //   color: AppColors.colorGrey,
              //   width: MediaQuery.of(context).size.height/3.5,
              //   height: 1,
              // )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height/30,
            width: MediaQuery.of(context).size.height/12.3,
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.height/9.4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Text("GET",style: TextStyle(color: Colors.blue.shade700,fontSize: 10,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
