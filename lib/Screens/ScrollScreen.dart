import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScrollScreen extends StatefulWidget {
  @override
  _ScrollScreenState createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  List<StudentProfile> studentProfiles = [
    // Replace this with your actual list of student profiles.
    StudentProfile(name: 'Student 1', university: 'University 1', hobbies: 'Hobbies 1', dob: 'DOB 1', height: 'Height 1'), 
    StudentProfile(name: 'Student 2', university: 'University 2', hobbies: 'Hobbies 2', dob: 'DOB 2', height: 'Height 2'), // etc.
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Screen'),
        backgroundColor: Colors.teal,
      ),
      body: currentIndex < studentProfiles.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(studentProfiles[currentIndex].name),
                Text(studentProfiles[currentIndex].university),
                Text(studentProfiles[currentIndex].hobbies),
                Text(studentProfiles[currentIndex].dob),
                Text(studentProfiles[currentIndex].height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // handle rejection
                        setState(() {
                          currentIndex++;
                        });
                      },
                      child: Text('No'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // handle acceptance
                        setState(() {
                          currentIndex++;
                        });
                      },
                      child: Text('Yes'),
                    ),
                  ],
                ),
              ],
            )
          : Center(
              child: Text('No more profiles'),
            ),
    );
  }
}

class StudentProfile {
  final String name;
  final String university;
  final String hobbies;
  final String dob;
  final String height;

  StudentProfile({required this.name, required this.university, required this.hobbies, required this.dob, required this.height});
}
