import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ScrollScreen.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> studentAttributes = ['University', 'Hobbies', 'Height', 'DOB'];
  Map<String, bool> attributeMap = {}; // this will be about queries' output
  Map<String, String> attributeInput = {}; // this will be about the queries input

  @override
  void initState() {
    super.initState();
    for (String attribute in studentAttributes) {
      attributeMap[attribute] = false;
      attributeInput[attribute] = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Screen'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: studentAttributes.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Row(
              children: [
                Checkbox(
                  value: attributeMap[studentAttributes[index]],
                  onChanged: (value) {
                    setState(() {
                      attributeMap[studentAttributes[index]] = value!;
                    });
                  },
                ),
                Text(studentAttributes[index]),
              ],
            ),
            children: [
              if (attributeMap[studentAttributes[index]]!)
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      attributeInput[studentAttributes[index]] = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter ${studentAttributes[index]}',
                    ),
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(ScrollScreen()),
        child: Icon(Icons.search),
      ),
    );
  }
}
