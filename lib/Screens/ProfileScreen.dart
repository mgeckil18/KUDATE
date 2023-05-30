import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController hobbiesController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              isEditing ? Icons.save : Icons.edit,
            ),
            onPressed: () {
              setState(() {
                isEditing = !isEditing;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          children: <Widget>[
            if (isEditing)
              TextField(
                controller: hobbiesController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hobbies',
                ),
              )
            else
              Text(
                'Hobbies: ${hobbiesController.text}',
                style: TextStyle(fontSize: 24.sp),
              ),
            SizedBox(height: 16.h),
            if (isEditing)
              TextField(
                controller: universityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'University',
                ),
              )
            else
              Text(
                'University: ${universityController.text}',
                style: TextStyle(fontSize: 24.sp),
              ),
            SizedBox(height: 16.h),
            if (isEditing)
              TextField(
                controller: dobController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'DOB',
                ),
              )
            else
              Text(
                'DOB: ${dobController.text}',
                style: TextStyle(fontSize: 24.sp),
              ),
            SizedBox(height: 16.h),
            if (isEditing)
              TextField(
                controller: heightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Height',
                ),
              )
            else
              Text(
                'Height: ${heightController.text}',
                style: TextStyle(fontSize: 24.sp),
              ),
          ],
        ),
      ),
    );
  }
}
