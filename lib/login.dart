import 'package:flutter/material.dart';
import 'package:healthapp/signup.dart';


import 'Dashboard.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var changeObscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/heart.png', // Replace with your image path
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                obscureText: changeObscureText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector

                    (
                      onTap:(){
                        setState(() {
                          changeObscureText=!changeObscureText;
                        });

                      },child: Icon(Icons.remove_red_eye)),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text ('Forget Password'),
                ],
              ),


              SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  if(emailController.text == 'sofikhadka@gmail.com'&& passwordController.text == 'hello'){
                    // Navigate to sign-up page
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                            (context) {
                          return Dashboard(emailController.text, passwordController.text);
                        }));

                  }
                  else{
                    print('error');
                  }
                  print (emailController.text);
                  print (passwordController.text);
                },
                child: Text('Log In'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                          (context) {
                        return SignUpPage();
                      }));

                  // Implement login functionality
                },
                child: Text('Sign UP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}