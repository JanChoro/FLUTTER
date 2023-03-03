import 'package:flutter/material.dart';
// import 'styles.dart';

import 'appbar_nav.dart';

class PacienteDetail extends StatelessWidget {
  final dynamic paciente;

  const PacienteDetail({super.key, required this.paciente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child:
                AppBarNav(title: "${paciente['nombre']} ${paciente['apellido']}")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1641592542269-36f9e750dacb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: const Color.fromARGB(80, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(paciente['imagen']),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                      "Paciente:  ${paciente['nombre']} ${paciente['apellido']}",
                        style: const TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${paciente['especialidad']}",
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text(
                  'Información personal',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Correo: ${paciente['correo']}'
                    ),
                    Text('Teléfono: ${paciente['telefono']}'),
                    /* medico['estado'] ? const Text('Activo', style: TextStyle(color: Colors.green), ) : const Text('Activo', style: TextStyle(color: Colors.red), ), */
                    Row(
                      children: [
                        const Text('Estado: '),
                        validacionEstado(paciente['estado']),
                      ],
                    )
                  ],
                ),
              ),
            
            ],
          ),
        ));
  }

  Widget validacionEstado(bool estado) {
    if (estado) {
      return const Text(
        'Activo',
        style: TextStyle(color: Colors.green, fontSize: 16),
      );
    } else {
      return const Text(
        'Inactivo',
        style: TextStyle(color: Colors.red, fontSize: 16),
      );
    }
  }
}
