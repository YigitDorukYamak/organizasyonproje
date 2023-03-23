import 'package:flutter/material.dart';

import '../main.dart';



class NewLogin extends StatefulWidget {
  const NewLogin({Key? key}) : super(key: key);

  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
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

                  Text('Aramıza katıl', style: TextStyle(fontSize: 36)),

                  SizedBox(
                    height: 1,
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
                              border: InputBorder.none, hintText: 'Full Name'),
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
                          obscureText: false,
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
                              border: InputBorder.none,
                              hintText: 'Confirm Password'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
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
                            'Kayıt ol',
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
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}