import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 64.0, bottom: 16.0),
              child: Center(
                child: Image.asset(
                  'resources/img/logo.jpg',
                  width: 300,
                  height: 200,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                    padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'User Id',
                              icon: Icon(
                                Icons.person,
                                color: Colors.black54,
                                size: 36.0,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (value) => print(value),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'กรุณาระบุ User';
                              }
                              _username = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 26.0),
                    padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black54,
                                size: 36.0,
                              ),
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            onSaved: (value) => print(value),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'กรุณาระบุ Password';
                              }
                              _password = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 16.0),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                if (_username == 'admin' &&
                                    _password == 'admin') {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          content: Text(
                                              'User หรือ Password ไม่ถูกต้อง'),
                                        );
                                      });
                                } else {
                                  Navigator.pushNamed(context, '/main');
                                }
                              }
                            },
                            child: Text(
                              'LOGIN',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 230.0, top:20.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                      child: Text(
                        'Register New Account',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
