import 'package:design_clones/screens/startup_page_1.dart';
import 'package:flutter/material.dart';

class StartupPagesWidget extends StatefulWidget {
  const StartupPagesWidget({Key? key}) : super(key: key);

  @override
  _StartupPagesWidgetState createState() => _StartupPagesWidgetState();
}

class _StartupPagesWidgetState extends State<StartupPagesWidget> {

  List imagesStartupPages=['assets/images/image1.jpg','assets/images/image2.jpg','assets/images/image3.png'];
  PageController pageController=PageController();
  int currentIndex=0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView.builder(
          itemBuilder: (BuildContext context,int index){
            return StartupPage1(imageUrl: imagesStartupPages[index],);
          },
          controller: pageController,
          onPageChanged: (index){
            setState(() {
              currentIndex=index;
            });
          },
          itemCount: 3,
        ),
        Positioned(
            top: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesStartupPages.map((urlImage){
                int index=imagesStartupPages.indexOf(urlImage);
                return Container(
                  width: 100,
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: currentIndex==index?Colors.black:Colors.grey
                  ),
                );
              }).toList(),
            )
        ),
      ],
    );
  }
}
