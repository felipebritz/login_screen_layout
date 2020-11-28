import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login to continue!',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
            spacer(),
            textFieldContainer(
              iconData: Icons.person_outline,
              description: 'Username',
            ),
            spacer(),
            textFieldContainer(
              iconData: Icons.lock_outline,
              description: 'Password',
            ),
            spacer(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.white,
                  child: Icon(
                    Icons.check,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            spacer(),
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.red[300],
                    Colors.orange,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget spacer() {
  return SizedBox(
    height: 15.0,
  );
}

Widget textFieldContainer({IconData iconData, String description}) {
  return Container(
    padding: EdgeInsets.all(20),
    width: double.infinity,
    height: 80.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Row(
      children: [
        Icon(
          iconData,
          color: Colors.red[400],
          size: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            color: Colors.grey[600],
          ),
        )
      ],
    ),
  );
}
