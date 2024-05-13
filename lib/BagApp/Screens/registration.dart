import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  TextEditingController passController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var pwd_visibity = true;

  @override
  void dispose() {
    passController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Image.asset("assets/images/bagicon.png"),
                  Text(
                    "join Active eCommerce",
                    style: GoogleFonts.sahitya(),
                  ),
                  const SizedBox(height: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Colors.redAccent

                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          border: OutlineInputBorder(),
                          labelText: "Name",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Colors.redAccent

                        ),
                      ),
                      TextFormField(
                        validator: (email) {
                          if (email!.isEmpty || !email.contains('@')) {
                            return "email must be a valid email";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: 'Enter your email here',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Colors.redAccent

                        ),
                      ),
                      TextFormField(
                        controller: passController,
                        obscureText: pwd_visibity,
                        obscuringCharacter: '*',
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return 'Password is empty or / check the length';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pwd_visibity = !pwd_visibity;
                              });
                            },
                            icon: Icon(pwd_visibity
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: 'Enter your password here',
                          helperText:
                          'Password must contain upper and lowercase letters',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Retype Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent
                        ),
                      ),
                      TextFormField(
                        obscureText: pwd_visibity,
                        validator: (confirmpassword) {
                          if (confirmpassword!.isEmpty ||
                              confirmpassword != passController.text) {
                            return "password empty/mismatch";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pwd_visibity = !pwd_visibity;
                              });
                            },
                            icon: Icon(pwd_visibity
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(),
                          labelText: "Retype Password",
                          hintText: 'Confirm your password here',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  MaterialButton(
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if (valid == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Registration failed")));
                      }
                    },
                    color: Colors.red,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Already have an Account?"),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage()));
                    },
                    color: Colors.yellow,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
