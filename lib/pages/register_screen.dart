import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  String _username = "", _password = "", _confirmpassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      appBar: AppBar(
        title: new Text("RREGISTER"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 40.0),
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle:
                            TextStyle(color: Colors.black38, fontSize: 18.0),
                        icon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) => print(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'กรุณาระบุข้อมูลให้ครบถ้วน';
                        }
                        _username = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0),
              padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(color: Colors.black38, fontSize: 18.0),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'กรุณาระบุข้อมูลให้ครบถ้วน';
                        }
                        _password = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0),
              padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        hintStyle:
                            TextStyle(color: Colors.black38, fontSize: 18.0),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'กรุณาระบุข้อมูลให้ครบถ้วน';
                        }
                        _confirmpassword = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 40.0),
              alignment: Alignment.center,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new RaisedButton(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          if (_username == 'admin') {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text('User นี้มีอยู่ในระบบแล้ว'),
                                  );
                                });
                          } else if (_password != _confirmpassword) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text(
                                        'Confirm password ไม่ตรงกันกับ Password'),
                                  );
                                });
                          } else {
                            Navigator.pushNamed(context, "/login");
                          }
                        }
                      },
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
