import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("M O B I L E"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.green,child: Center(
                    child: Text("${MediaQuery.of(context).size.width}"),
                  ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blueGrey,
                  height: 50,
                  
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
