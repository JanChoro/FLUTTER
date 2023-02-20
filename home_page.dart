import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override // build : construye la pantalla
  Widget build(BuildContext context) {
    return Scaffold(
        //recive un appbar
        appBar: AppBar(
          title: const Text("APP D.J."),
          actions: const [Icon(Icons.audiotrack, color: Colors.blue)],
        ),
        drawer: const Drawer(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 77.0,
                    height: 77.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.yellow),
                    child: const Center(
                        child: Icon(
                      Icons.streetview,
                      color: Colors.blue,
                    ))),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 77.0,
                  height: 77.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.orange),
                  child: const Icon(
                    Icons.local_pharmacy,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 77.0,
                  height: 77.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.yellow),
                  child: const Icon(
                    Icons.airline_seat_flat,
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 77.0,
                  height: 77.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.yellow),
                  child: const Icon(
                    Icons.apartment,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Doctor",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Farmacia",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Paciente",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Hospital",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            // Parte de abajo

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 350,
                  height: 70,
                  // 
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 3
                    ),
                      borderRadius: BorderRadius.circular(13),
                      ),
                )
              ],
            )
          ],
        )
        // decoration

        );
  }
}
