import 'package:flutter/material.dart';
import 'package:orderac/temporary_screens/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Container(
      decoration: BoxDecoration(
        color: Colors.red[100],
        image: DecorationImage(
          image: AssetImage('assets/initials/splash.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
              child: Image.asset('assets/icon/icon.png'),
            ),
            Text(
              'Orderac',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );

    final bottomNavigationBar = Container(
      height: 100.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.0,
            width: 180.0,
            child: OutlineButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              borderSide: BorderSide(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2.0,
              ),
              child: Center(
                child: Text('LOG IN'),
              ),
            ),
          ),
          SizedBox(width: 12.0),
          SizedBox(
            height: 62.0,
            width: 180.0,
            child: FlatButton(
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
          ),
        ],
      ),
    );

    return Scaffold(
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
