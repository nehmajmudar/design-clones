import 'package:design_clones/res/app_colors.dart';
import 'package:design_clones/widgets/game_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height/50);
    print(MediaQuery.of(context).size.height/20);
    print(MediaQuery.of(context).size.height/30);
    print(MediaQuery.of(context).size.height/15);
    print(MediaQuery.of(context).size.height/60);
    print(MediaQuery.of(context).size.height/75);
    print(MediaQuery.of(context).size.height/373);
    return Scaffold(
      backgroundColor: AppColors.colorBlack,
      appBar: AppBar(
        backgroundColor: AppColors.colorGrey.withOpacity(0.5),
        title: Text("Games",style: TextStyle(fontSize: 12,color: AppColors.colorWhite),),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/49.21,top: MediaQuery.of(context).size.height/49.21),
              child: Text("What We're Playing",style: TextStyle(color: AppColors.colorWhite,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: GridView(
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 320,
                //   childAspectRatio: 3.5/1,
                //   mainAxisSpacing: 20,
                //   crossAxisSpacing: 10,
                // ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 3,
                  mainAxisExtent: MediaQuery.of(context).size.height/1.9790,
                  childAspectRatio: 3.5/1
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24.6,bottom: 6,left: MediaQuery.of(context).size.height/49.21),
              color: AppColors.colorGrey.withOpacity(0.5),
              height: 0.5,alignment: Alignment.center,
              width: (MediaQuery.of(context).size.width-30),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/49.21),
              child: Text("Top Apple arcade games for you",style: TextStyle(color: AppColors.colorWhite,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: GridView(
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 320,
                //   childAspectRatio: 3.5/1,
                //   mainAxisSpacing: 20,
                //   crossAxisSpacing: 10,
                // ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 3,
                    mainAxisExtent: MediaQuery.of(context).size.height/1.9790,
                    childAspectRatio: 3.5/1
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24.6,bottom: 6,left: MediaQuery.of(context).size.height/49.21),
              color: AppColors.colorGrey.withOpacity(0.5),
              height: 0.5,alignment: Alignment.center,
              width: (MediaQuery.of(context).size.width-30),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/49.21),
              child: Text("What We're Playing",style: TextStyle(color: AppColors.colorWhite,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: GridView(
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 320,
                //   childAspectRatio: 3.5/1,
                //   mainAxisSpacing: 20,
                //   crossAxisSpacing: 10,
                // ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 3,
                    mainAxisExtent: MediaQuery.of(context).size.height/1.9790,
                    childAspectRatio: 3.5/1
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24.60,bottom: 6,left: MediaQuery.of(context).size.height/49.21),
              color: AppColors.colorGrey.withOpacity(0.5),
              height: 0.5,alignment: Alignment.center,
              width: (MediaQuery.of(context).size.width-30),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/49.21),
              child: Text("What We're Playing",style: TextStyle(color: AppColors.colorWhite,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: GridView(
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 320,
                //   childAspectRatio: 3.5/1,
                //   mainAxisSpacing: 20,
                //   crossAxisSpacing: 10,
                // ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 3,
                    mainAxisExtent: MediaQuery.of(context).size.height/1.9790,
                    childAspectRatio: 3.5/1
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                  GameWidget(gameImage: 'assets/images/minion-rush-logo-r225x.jpg'),
                  GameWidget(gameImage: 'assets/images/traffic rider.png'),
                  GameWidget(gameImage: 'assets/images/candycrush.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}