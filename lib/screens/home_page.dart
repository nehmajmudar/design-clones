import 'package:design_clones/widgets/number_square.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TextEditingController> numberController = List.generate(81, (i) => TextEditingController());

  @override
  void dispose() {
    super.dispose();
    for(int i=0;i<81;i++){
      numberController[i].dispose();
    }
  }
  @override
  Widget build(BuildContext context) {
    print(((MediaQuery.of(context).size.width)-20)/9);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sudoku"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: (MediaQuery.of(context).size.width)-20,
          width: (MediaQuery.of(context).size.width)-20,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 2)
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 9,
                childAspectRatio: 1
            ),
            itemCount: 81,
            itemBuilder: (BuildContext ctx,index){
              return NumberSquare(controller: numberController[index],index: index,);
            }
          ),
          // child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 9,
          //     childAspectRatio: 1
          //   ),
          //   children: [
          //
          //   ],
          // ),
        ),
      ),
    );
  }
}
