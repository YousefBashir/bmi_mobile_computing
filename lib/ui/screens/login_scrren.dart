import 'package:bmi_mobile_computing/ui/screens/registretion_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          'BMI Analyzer',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    'WellCome Back',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'If you already have account, log in',
                    style: TextStyle(color: Colors.grey[500], fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: 'UserName',
                      border: UnderlineInputBorder(),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: 'Password',
                      border: UnderlineInputBorder(),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            //SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue[600]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You Do not Have An Account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RegistrationScreen();
                      }));
                    },
                      child: Text(
                    " Sign Up",
                    style: TextStyle(
                        color: Colors.blue[600], fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
