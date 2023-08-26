import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';
import 'model_leagues.dart';
import 'detalle_ligas.dart';
class Leagues extends StatefulWidget {
  const Leagues({super.key,});

  @override
  State<Leagues> createState() => _LeaguesState();
}

class _LeaguesState extends State<Leagues> {
  //Url
  var url = Uri.parse("https://api-football-standings.azharimm.dev/leagues");
  //Lista
  List<LeaguesM> ligas =[];
  //Wilder
  void initState(){
    leaguesCaracters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ligas del Mundo"),
      backgroundColor: Colors.indigo,),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ListView.builder(
            itemCount: ligas.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetalleLueagues(liga: ligas[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Hero(
                        tag: index,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            ligas[index].logos,
                            width: 200,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Text(
                        ligas[index].name,
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
  //leaguesCaracters
  void leaguesCaracters() async{
    final response = await get(url);
    //
    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final data = jsonDecode(body);
      // debugPrint(data.toString());
      //Recorremos
      for (var i in data['data']) {
        // print(i);
        setState(() {
          ligas.add(LeaguesM(i["id"], i["name"], i["slug"], i["abbr"], i["logos"]["light"]));
        });
      }
      // print(ligas);
    }
  }
}