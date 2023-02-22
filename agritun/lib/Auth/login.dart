import 'package:agritun/Auth/Signup.dart';
import 'package:agritun/Pages/Menu.dart';
import 'package:agritun/constant/couleur.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // SingleChildScrollView(
        Container(
          height: double.infinity,
          width: double.infinity,
          //child: Image.asset('assets/img1.jpg', fit: BoxFit.fill),
        ),

        Container(
          height: 580,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: c2,
          ),
          margin: const EdgeInsets.only(
              left: 25.0, right: 25.0, bottom: 0, top: 100),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      left: 120.0, right: 120.0, bottom: 20, top: 35),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/agritun.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                    padding: EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 20, bottom: 0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "رقم الهاتف",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                        ),
                      ),
                    ) /*TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 125, 208, 138)),
                      ),
                        //labelText: 'رقم الهاتف',
                        hintText: 'رقم الهاتف',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 27, 141, 86),
                        )),
                  ),*/
                    ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 35.0, right: 35.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        // labelText: 'كلمة العبور',
                        hintText: 'كلمة العبور',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Menu()));
                        },
                        icon: const Icon(
                          Icons.login,
                          size: 24.0,
                          color: c2,
                        ),
                        label: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(color: c1, fontSize: 25),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Signup()));
                        },
                        label: const Text(
                          "إنشاء حساب",
                          style: TextStyle(color: c1, fontSize: 25),
                        ),
                        icon: const Icon(
                          Icons.create,
                          size: 24.0,
                          color: c2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
