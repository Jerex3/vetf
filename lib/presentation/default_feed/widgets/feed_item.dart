import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 600
      ) ,
      child: Flexible(
        child: Container(
          height: 500,        
          color: Colors.red,
          child: Padding(padding: EdgeInsets.all(15), child: Container(color: Colors.black12,)),
        ),
      ),
    );
    
  }
}