import 'package:ecosistemacopy/presentation/widgets/barracarga.dart';
import 'package:flutter/material.dart';
import 'package:ecosistemacopy/presentation/screens/drawer/drawer.dart';


class MainMenuScreen extends StatelessWidget {
  final String name = "MainMenuScreen";
  final String path =  "/mainscreen";

  const MainMenuScreen({super.key});


  @override
  Widget build(BuildContext context) {
        final  scaffoldKey = GlobalKey<ScaffoldState>();


    return Scaffold(
      key: scaffoldKey,

      appBar: AppBar(
        title: const Text("Menu Principal"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body:const MainColumn(),
      
      drawer: Lateralnavbar(scaffoldKey: scaffoldKey),
    );
  }
}


class MainColumn extends StatelessWidget {
  const MainColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        const SizedBox(height: 30,),
       const Cargahecha(),
        
      ],

    );
  }
}