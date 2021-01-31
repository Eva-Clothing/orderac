import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final body = Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 60.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  autofocus: true,
                  decoration: InputDecoration(
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    counterText: '',
                    border: InputBorder.none,
                    // hintText: 'xyz@gmail.com',
                    hintStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                    labelText: "Enter email",
                    labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == '') {
                      return 'Enter an email';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                SizedBox(height: 12.0),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  autofocus: true,
                  decoration: InputDecoration(
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    counterText: '',
                    border: InputBorder.none,
                    // hintText: '123456',
                    hintStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                    labelText: "Enter password",
                    labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  validator: (value) {
                    if (value.length < 6) {
                      return 'Password must be atleast 6 characters';
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(height: 18.0),
                FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  ),
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Center(
                    child: Text('REGISTER'),
                  ),
                ),
               ],
             ), 
            )
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
