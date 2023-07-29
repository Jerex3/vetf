import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget  {
  final bool isOpen;
  final int indexSelected;

  Sidebar({super.key, required this.isOpen, required this.indexSelected});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {

  @override
  Widget build(BuildContext context) {


    
    return Card(
      child: ListView(
        children: [
          const SizedBox(height: 10,),
          generateItem("Estadisticas", Icons.dashboard, 0),
          const SizedBox(height: 10,),
          generateItem("Clientes", Icons.person, 1),
          const SizedBox(height: 10,),
          generateItem("Pacientes", Icons.pets, 2),
        ],
      ),
    );
  }

  ListTile generateItem(String text,IconData icondata, int index) {
    return ListTile(
           selected: index == widget.indexSelected, 
            leading: Icon(icondata),
            title: widget.isOpen ? Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ) : Text(""),
            onTap: () {
              
              // Acción al seleccionar la opción del dashboard 1
            },
          );
  }
}