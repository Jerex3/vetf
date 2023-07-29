import 'package:flutter/material.dart';
import 'package:vetapp/core/presentation/layout/sidebar.dart';
import 'package:vetapp/main.dart';
import 'package:vetapp/presentation/clients_list/clients_list_view.dart';
import 'package:vetapp/presentation/default_feed/feed_view.dart';

class MainLayout extends StatefulWidget {
  
  final Widget child;

  const MainLayout({
    super.key,
    required this.child
  });

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {


    bool _isSidebarOpen = true;
    bool _isCLossingIt = false;
    double _width = 250;
    void _toggleSidebar() {
    setState(() {
      _width = _width == 250 ? 65 : 250;
      if(_isSidebarOpen) {
        _isCLossingIt = true;
        _isSidebarOpen = false;
      } else {
        _isCLossingIt = false;
      }
    });

  }



  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  IconButton(onPressed: _toggleSidebar, icon:const Icon(Icons.menu)),
                  Expanded(child: SizedBox()),
                  
                  Icon(Icons.pets),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Vet App"),
                  SizedBox(
                    width: 25,
                  )

                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                AnimatedContainer(child: Sidebar(isOpen: _isSidebarOpen, indexSelected: 1), duration: Duration(milliseconds: 500), width: _width,curve: Curves.easeInOut, onEnd: () {
                  setState(() {
                          if(!_isSidebarOpen && !_isCLossingIt){
                            _isSidebarOpen = true;
                          } 

                          

                  });
                },),
                 Expanded(
                  child:Padding(
                    padding:  EdgeInsets.all(4),
                    child: FeedView(),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}