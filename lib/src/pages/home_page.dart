import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient color"),
        centerTitle: true,
      ),
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.network(
              "https://images.unsplash.com/photo-1611915387288-fd8d2f5f928b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.transparent,
                const Color(0xffff0e35).withOpacity(0.8),
                //   Color(0xff000000),
              ],
            ),
          ),
        ),
         Positioned(
           right: 30,
           bottom: 30,
           child: Text(
             'Cat'.toUpperCase(),
             style: const TextStyle(
                 color: Colors.white,
               fontSize: 120,
               fontStyle: FontStyle.italic,
               fontWeight: FontWeight.bold
             ),
           ),
         ),
      ]),
    );
  }
}
