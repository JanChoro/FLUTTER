import 'package:flutter/material.dart';
import 'medico_detail_page.dart';
import 'pacientes_detail.dart';
import 'pacientes_list.dart';

import 'appbar_nav.dart';

class PacientesPage extends StatelessWidget {
  const PacientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBarNav(title: 'Pacientes - Medical Help')),
      body: ListView.separated(
        itemCount: listaPacientes.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(listaPacientes[index]['imagen']),
                ), 
                Text("${listaPacientes[index]['nombre']} ${listaPacientes[index]['apellido']}"),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PacienteDetail(paciente: listaPacientes[index])));
                }, icon: const Icon(Icons.arrow_forward))
              ],
            ),
          );
        },
      ),      
    );
  }
}


/* ElevatedButton(
        child: Text('Regresar'),
        onPressed: () {
          Navigator.pop(context);
      },) */
      /* IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
        Navigator.pop(context);
      },), */