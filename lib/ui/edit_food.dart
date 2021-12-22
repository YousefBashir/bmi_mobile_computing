import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditFoodDetailsScreen extends StatefulWidget {
  @override
  _EditFoodDetailsScreenState createState() => _EditFoodDetailsScreenState();
}

class _EditFoodDetailsScreenState extends State<EditFoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Analyzer',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 70,
                top: 45,
              ),
              child: Text(
                'Edit Food Details',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue[600]),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 60, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    //alignment: Alignment.center,
                    //padding: EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    height: 30,
                    width: 190,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 60, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    //alignment: Alignment.center,
                    //padding: EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    height: 30,
                    width: 190,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 60, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Calory',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    height: 30,
                    width: 140,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  Text('cal/g')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 60, top: 30),
              child: Text(
                'Photo',
                style: TextStyle(
                    color: Colors.blue[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Container(
                width: double.infinity,
                height: 250,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Upload photo',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      )),
                  ElevatedButton(onPressed: () {}, child: Text('Save',style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 20),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
