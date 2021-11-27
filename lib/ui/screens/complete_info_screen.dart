import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteInfoScreen extends StatefulWidget {
  @override
  _CompleteInfoScreenState createState() => _CompleteInfoScreenState();
}

class _CompleteInfoScreenState extends State<CompleteInfoScreen> {
  List gender = ["Male", "Female"];
  String select;

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blue[600]),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('BMI Analyzer',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70, left: 10),
              child: Column(
                children: [
                  Text(
                    'Complete Your',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Information',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  addRadioButton(0, 'Male'),
                  addRadioButton(1, 'Female'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Weight',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Length',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date Of Birth',
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
              padding: EdgeInsets.only(left: 30, right: 30, top: 100),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue[600]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
