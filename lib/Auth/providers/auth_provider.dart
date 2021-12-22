import 'package:bmi_mobile_computing/Auth/helpers/auth_helper.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  signup()async{
    AuthHelper.authHelper.signup(emailController.text, passwordController.text);
  }
  signin()async{
    AuthHelper.authHelper.signin(emailController.text, passwordController.text);
  }

}