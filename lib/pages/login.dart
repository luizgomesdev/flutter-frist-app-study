import 'package:Flutter/controllers/appController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String email;
  String password;

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 128,
                    ),
                    Container(
                        width: 128,
                        child:
                            SvgPicture.asset(AppController.instance.logoPath)),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            TextField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.lightBlue,
                                onPressed: () {
                                  if (email ==
                                          'luiz.gomes@toroinvestimentos.com.br' &&
                                      password == '123456') {
                                    Navigator.of(context)
                                        .pushReplacementNamed('/home');
                                  }
                                },
                                child: Text('Entrar'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black12,
          ),
          _body()
        ],
      ),
    );
  }
}
