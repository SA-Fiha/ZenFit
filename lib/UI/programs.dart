import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:zenfit/UI/workout%20programs/inbuilt/ArnoldsBasicMassRoutine.dart';
import 'package:zenfit/UI/workout%20programs/inbuilt/Bodybuilding313.dart';
import 'package:zenfit/UI/workout%20programs/inbuilt/german_volume_training_3daysperweek.dart';
import 'package:zenfit/UI/homepage.dart';
import 'package:zenfit/UI/settings.dart';
import 'package:zenfit/UI/graph.dart';
import 'package:zenfit/UI/trainingProgram.dart';
import 'package:zenfit/UI/startWorkout.dart';

class Programs extends StatefulWidget {
  const Programs({super.key});

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  bool isCardVisible= false;

  void navigateTostartWorkout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => startWorkout(workouttime: DateTime.now().millisecondsSinceEpoch.toString(),)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { setState(() {isCardVisible = false;
      });
      },
      child: Scaffold(
        //backgroundColor: Color(0xff37393D),
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
              "Programs",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: const Icon(Icons.arrow_back),color: Colors.white),
          backgroundColor: Colors.black12,

        ),
        body: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Arnold's Basic Mass Routine",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("6 days/weeks"),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ABMR6DP1W()),
                    );

                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Bodybuilding 313",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("5-6 days/week"),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BodyBuilding313()),
                    );
                  }
              ),
            ),

            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Bodybuilding Ballet",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("6 days/week"),
                  onTap: (){

                  }
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("4 days/week"),
                  onTap: (){

                  }
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("5 days/week"),
                  onTap: (){

                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Bodybuilding Blitz",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("5 days/week"),
                  onTap: (){

                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Bodybuilding for Bigginers",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("3 days/week"),
                  onTap: (){

                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Full Body",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("2 days/week"),
                  onTap: (){

                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "German Volume Training",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("3 days/week"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GVT3D1W()));
                  }
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Push/Pull/Legs",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("Advanced,6 days/week"),
                  onTap: (){

                  }
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("Intermediate,6 days/week"),
                  onTap: (){

                  }
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                  textColor: Colors.white,
                  title: const Text("Intermediate,3 days/week"),
                  onTap: (){

                  }
              ),
            ),


          ],
        ),


        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          height: 60,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              }, icon: const Icon(Icons.home,color: Colors.white)),
              IconButton(onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Graph()),
                );

              }, icon: const Icon(Icons.show_chart,color: Colors.white)),
              IconButton(onPressed:(){
                setState(() {
                  isCardVisible = !isCardVisible;
                });
              }, icon: const Icon(Icons.add_circle_outlined,color: Colors.white)),
              IconButton(onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TrainingProgram()),
                );

              }, icon: const Icon(Icons.note_alt,color: Colors.white)),
              IconButton(onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const settings()),
                );

              }, icon: const Icon(Icons.settings,color: Colors.white)),

            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: isCardVisible
            ? Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BackdropFilter( filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
              child: Container(
                height: 120,
                color: Colors.transparent,
                child: Center(
                  child: Card(
                    color: const Color.fromRGBO(250, 95, 95,5),
                    child: InkWell(
                      onTap: () {
                        print("tapped");
                        navigateTostartWorkout();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.fitness_center, // Choose the workout icon
                              size: 30.0,
                              color: Colors.white, // Adjust the color as needed
                            ),
                            SizedBox(width: 10),
                            Text('Start a new workout', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
            : null,
      ),
    );
  }
}
