/*MAIN.DART*/

import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo D.J',
      // 
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: const HomePage(title:"Home Pge"),
    );
  }
}

//------------------------------------------------------------------------------

/*homePage.dart*/
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App d.j"),
        // actions: const [
        //   IconButton(
        //     onPressed: () {},
        //    icon: const Icon(Icons.access_alarm),
        //    color: Colors.red,
        //     ),

        // ],
      ),
      drawer: Drawer(), //Tres barras arriba a la izquierda
      body:
      
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        // colum( Childre[] )  nos permite colocar varios widgets (texto ene ste caso) al mismo tiempo.
        
          
        Text("Hola",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold)), //Propiedades del texto
                

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "como estás hoy",
            style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w100),
          ),
        ) 
        
      ]),

      
    );
  }
}
//NOTA:
// CREAR carpeta "assets". En ella, van videos, imágenes, íconos, fuentes, y todo tipo de multimedia
