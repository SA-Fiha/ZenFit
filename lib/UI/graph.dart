import 'package:flutter/material.dart';
import 'package:zenfit/UI/homepage.dart';
import 'package:zenfit/UI/settings.dart';
import 'package:zenfit/UI/trainingProgram.dart';
import 'package:zenfit/UI/measurementGraph.dart';
import 'package:zenfit/UI/strengthGraph.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff37393D),
      appBar: AppBar(
        title: const Text(
            "My Graphs",
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        backgroundColor: Colors.black12,

      ),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Measurement Graph"),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MeasurementGraph()),
                  );
        
        
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Strength Graph"),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const StrengthGraph()),
                  );
        
                },
              ),
            ),
        
        
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 20,
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            }, icon: const Icon(Icons.home)),
            IconButton(onPressed:(){


            }, icon: const Icon(Icons.show_chart)),
            IconButton(onPressed:(){

            }, icon: const Icon(Icons.add_circle_outlined)),
            IconButton(onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrainingProgram()),
              );

            }, icon: const Icon(Icons.note_alt)),
            IconButton(onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );

            }, icon: const Icon(Icons.settings)),

          ],
        ),
      ),

    );
  }
}
