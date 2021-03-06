import 'package:bmi_mobile_computing/Auth/providers/auth_provider.dart';
import 'package:bmi_mobile_computing/Auth/ui/login_scrren.dart';
import 'package:bmi_mobile_computing/ui/widgets/custom_textFormFiled.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ui/screens/complete_info_screen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context,authProvider,x){
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
                      'Create New Account',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[600],
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'If you do not already have account, log in',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller:authProvider.nameController,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'name',
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller:authProvider.emailController,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller:authProvider.passwordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {

                            });
                          },
                        ),
                        hintText: 'Password',
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller:authProvider.repasswordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Re-Password',
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
                    onPressed: () {
                      authProvider.signup();
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CompleteInfoScreen();
                      }));
                    },
                    child: Text(
                      'Create',
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
                      'You Have An Account?',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        },
                        child: Text(
                          " Login",
                          style: TextStyle(
                              color: Colors.blue[600], fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
