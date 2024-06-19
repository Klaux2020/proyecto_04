//Instanciando como Clase (Impacta en el Proceso pues es muy Ligera)
import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
 String name;
 String horaenvio;
 String asunto;
 String descripcion;
 String adjunto;
 String correo;
 String prioridad;

  ItemCard({
    required this.name , 
    required this.horaenvio,
    required this.asunto,
    required this.descripcion,
    required this.adjunto,
    required this.correo,
    required this.prioridad,
    }
    );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
              decoration : BoxDecoration(
              color: Colors.white
              ),
                 child: ListTile(
               // leading: Icon(Icons.star),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,
                    style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    Text(horaenvio,
                    style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ],
                ), 
               
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    SizedBox(height: 8),
                    Text(asunto,
                    style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: 8),
                    Text(descripcion),
                    SizedBox(height: 8),
                    Column(
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration : BoxDecoration(
                            color: const Color.fromARGB(255, 239, 231, 231)
                             ),                
                            child: Row( 
                                 children: [
                                 Icon(Icons.attach_file_rounded),
                                 SizedBox(width: 1),
                                 Text(adjunto),
                            ],),
                          ),
                        Text(correo),
                        IconButton(
                                icon: Icon(
                                  Icons.star_sharp,
                                  color: prioridad == "NO"
                                      ? Colors.grey
                                      : Colors.yellow,
                                ),
                                onPressed: () {},
                              ),
                        ],),
                      ],
                    )
                  ],
                ),
               
              ),
      ),
    ); 
  }
}