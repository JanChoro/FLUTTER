import 'package:flutter/material.dart';
// import 'styles.dart';

import 'appbar_nav.dart';

class MedicoDetail extends StatelessWidget {
  final dynamic medico;

  const MedicoDetail({super.key, required this.medico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child:
                AppBarNav(title: "${medico['nombre']} ${medico['apellido']}")),
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
                        backgroundImage: NetworkImage(medico['imagen']),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${medico['nombre']} ${medico['apellido']}",
                        style: const TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${medico['especialidad']}",
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
                      'Correo: ${medico['correo']}'
                    ),
                    Text('Teléfono: ${medico['telefono']}'),
                    /* medico['estado'] ? const Text('Activo', style: TextStyle(color: Colors.green), ) : const Text('Activo', style: TextStyle(color: Colors.red), ), */
                    Row(
                      children: [
                        const Text('Estado: '),
                        validacionEstado(medico['estado']),
                      ],
                    )
                  ],
                ),
              ),
            const SizedBox(height: 30,),
              ListTile(
                title: const Text(
                  'Entidades aliadas',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(var entidad in medico['entidades'])Text(entidad), 
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),
                  const Text('aaaa'),

                  ],
                ),
              )
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
