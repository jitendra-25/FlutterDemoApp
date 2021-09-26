import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
       body: Center (
           child: Container (
             child: Text("Welcome to flutter App"),
           )
       ),
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     if(constraints.maxWidth > 600) {
      //       return _buildWideContainers();
      //     } else {
      //       return _buildNormalContainers();
      //     }
      //   }
      // ),
      drawer: MyDrawer(),
    );
  }

  Widget _buildNormalContainers() {
    return Center(
      child: Container(
        height: 400,
        width: 300,
      )
    );
  }

  Widget _buildWideContainers() {
      return Center(
        child: Container(
          height: 500,
          width: 400,
        ),
      );
  }
}
