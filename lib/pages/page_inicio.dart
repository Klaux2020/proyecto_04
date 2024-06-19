import 'package:flutter/material.dart';
import 'package:proyecto_04/models/Remitente.dart';
import 'package:proyecto_04/widget/item_card.dart';

class PageInicio extends StatefulWidget {
 
  @override
  State<PageInicio> createState() => _PageInicioState();
}

class _PageInicioState extends State<PageInicio> {
  @override

  List<RemitenteModel> remitenteList = [
    RemitenteModel(
      'Melvin Sherman', 
      "10:30 am",
      "Fonts,Mockups & Templates",
      "Its Friday and time for some Free products.Here are the their latest freebies to arrive on ourselves ",
      "2 Attachments",
      "pedro@gmail.com",
      "NO"),
     RemitenteModel(
      'Alvert Colinson', 
      "9:30 am",
      "Finished the part of UX",
      "Hey, I have finished the part of UX. Now you can check the invisionapo project attachment ",
      "1 Attachments",
      "acolinson@gmail.com",
      "SI"),
      RemitenteModel(
      'Zlatan Ibrahimovic', 
      "10:30 am",
      "Scoored his very fast goal",
      "Zlatan Ibrahimovic is Swedish profesional footballer who plays as forward for LA Galaxy",
      "2 Attachments",
      "zibhrahimovic@gmail.com",
      "NO"),
      
  ];

 
 @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton (
        backgroundColor: Colors.blue,
        onPressed: (){},
        child: Icon (
          Icons.add,
          color: Colors.white,
          ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( 
               children: [Icon(Icons.sort)]),
            Text("Email",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              children: [Icon(Icons.search)]
              ),
          ],
        )
      ),
     body: Container(
        child:
         Column(
           children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Inbox",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationThickness: 2,
                  ),
                ),
                Text("Sent",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                  ),
                ),
                Text("Draft",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                  ),
                ),
              ],
             ),
             SizedBox(height: 16),
            ...remitenteList.map(
                  (remitenteSeleccionado) => ItemCard(
                    name: remitenteSeleccionado.name, 
                    horaenvio: remitenteSeleccionado.horaenvio, 
                    asunto: remitenteSeleccionado.asunto,
                    descripcion: remitenteSeleccionado.descripcion, 
                    adjunto: remitenteSeleccionado.adjunto, 
                    correo: remitenteSeleccionado.correo, 
                    prioridad: remitenteSeleccionado.prioridad
                    ),
                ).toList()
           ],
         ),
      )
    );
  }
}