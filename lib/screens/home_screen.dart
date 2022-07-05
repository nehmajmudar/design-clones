import 'package:design_clones/widgets/one_third_square.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sudoku"),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: SizedBox(
            width: (MediaQuery.of(context).size.width)-30,
            height: (MediaQuery.of(context).size.width)-30,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                childAspectRatio: 1
              ),
              children: [
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
                OneThirdSquare(),
              ],
            ),
          )
        )
      ),
    );
  }
}
