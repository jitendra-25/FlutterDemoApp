import 'package:flutter/material.dart';
import 'package:flutter_app3/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            Image.asset("assets/images/login.png", fit: BoxFit.contain, height: 80, width: 150),
            Text("Login $name", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"),
                  ),
                  SizedBox(height: 40),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    )
                  )
                  //ElevatedButton(
                  //    onPressed: () {
                  //      Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //    },
                  //    child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 20)),
                  //    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //)
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
