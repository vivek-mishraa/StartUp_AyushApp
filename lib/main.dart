import 'package:ayush/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController _emailTEC = TextEditingController();
  TextEditingController _passTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 241, 126),
      appBar: AppBar(
        title: Text("StartUp Ayush"),
        backgroundColor: Color.fromARGB(255, 206, 209, 230),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/logo.png"),
                  radius: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "StartUp Ayush App",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextField(
                  cursorColor: Colors.grey,
                  controller: _emailTEC,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Email"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passTEC,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      hintText: "Enter a Password"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: () {
                        var _email = _emailTEC.text;
                        var _pass = _passTEC.text;
                        print("Email: " + _email);
                        print("Passworrd: " + _pass);

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Homescreen();
                          }),
                        );
                      },
                      child: Text("login")),
                ),
                Padding(
                    padding: const EdgeInsets.all(1),
                    child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: Text('Sign Up',
                            style:
                                TextStyle(fontSize: 14, color: Colors.blue))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
