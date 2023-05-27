import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock_outline, size: 60, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'Welcome In-BookStore',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'OR',
              style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'data:image/jpeg;base64,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'),
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'FACEBOOK',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/016/716/465/original/gmail-icon-free-png.png'),
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'GMAIL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "logup");
              },
              child: Text(
                'Not a member? Register now',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
