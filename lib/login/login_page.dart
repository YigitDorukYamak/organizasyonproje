import 'package:flutter/material.dart';
import 'package:organizasyonproje/sayfalar/mainPage.dart';

import 'new_login.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}




class _LoginPageState extends State<LoginPage> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/log.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Hello

                  Text('Hoşgeldiniz!',
                      style: TextStyle(fontSize: 36)),

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white10),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(

                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Email'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white10),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(

                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Password'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  MainPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            'Giriş',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hala üye değil misin?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NewLogin()),
                          );
                        },
                        child: Text(
                          ' O zaman kaydol ;)',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}