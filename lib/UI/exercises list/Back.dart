import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zenfit/UI/graph.dart';
import 'package:zenfit/UI/homepage.dart';
import 'package:zenfit/UI/settings.dart';
import 'package:zenfit/UI/trainingProgram.dart';
import 'package:zenfit/UI/exercise.dart';

import '../../Exercise List/exercise_list.dart';
import '../../Service/Database.dart';

class Back extends StatefulWidget {
  final String category;
  final String programName;
  final String weektime;
  final String workouttime;
  final String workoutName;
  const Back({super.key, required this.category, required this.programName, required this.weektime, required this.workouttime, required this.workoutName});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff37393D),
        body: SafeArea(
          child: ListView.builder(
              itemCount: backs.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.white10,
                  child: ListTile(
                      title: Text(backs[index],style: const TextStyle(color: Colors.white54),),
                      onTap: ()async{
                        String time = DateTime.now().millisecondsSinceEpoch.toString();
                        await FirebaseFirestore.instance
                            .collection('programs').doc(widget.category)
                            .collection("userIDs").doc(DatabaseService.user.uid)
                            .collection("program").doc(widget.programName)
                            .collection("weeks").doc(widget.weektime)
                            .collection("workout").doc(widget.workouttime)
                            .collection("exercise").doc(time)
                            .set({"time": time,"name": backs[index],"sets": 0,"reps" : 0});

                        await FirebaseFirestore.instance
                            .collection('programs').doc(widget.category)
                            .collection("userIDs").doc(DatabaseService.user.uid)
                            .collection("program").doc(widget.programName)
                            .collection("weeks").doc(widget.weektime)
                            .collection("workout").doc(widget.workouttime)
                            .collection("exercise").doc(time)
                            .collection("set").doc(time)
                            .set({"time": time,"weight": 0,"reps" : 0});

                        Navigator.pop(context);
                      }
                  ),
                );
              }
          )
        )
    );
  }
}
