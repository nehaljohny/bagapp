import 'package:bagapp/BagApp/Screens/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/snackbarrr.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "a";
  String password = 'a';

  var usercontroller = TextEditingController();
  var pwdcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usercontroller.dispose();
    pwdcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/bagicon.png')),
                // const SizedBox(height: 50), // Adding space at the top
                const Text(
                  " Join Active eCommerce",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
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
                    TextField(
                      controller: usercontroller,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email here',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
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
                      controller: pwdcontroller,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password here',
                        helperText:
                        'Password must contain upper and lowercase letters',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {
                    if (username == usercontroller.text &&
                        password == pwdcontroller.text) {
                      successSnackbar(context);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage1()));
                    } else {
                      errorSnackbar(context);
                    }
                    usercontroller.clear();
                    pwdcontroller.clear();
                  },
                  color: Colors.yellowAccent,
                  minWidth: 200,
                  shape: const StadiumBorder(),
                  child: const Text("Log in"),
                ),
                const SizedBox(height: 20),
                const Text("Ok, create a new account"),
                const SizedBox(height: 20), // Adjusted spacer
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignupPage()));
                  },
                  color: Colors.red,
                  minWidth: 200,
                  shape: const StadiumBorder(),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Adding space below Sign Up button
                const Text(
                  "Login with",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/5968/5968764.png'),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/300/300221.png'),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/3670/3670151.png'),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
