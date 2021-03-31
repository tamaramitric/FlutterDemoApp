import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstFlutterScreen()
  ));
}

class FirstFlutterScreen extends StatefulWidget {
  @override
  _FirstFlutterScreenState createState() => _FirstFlutterScreenState();
}

class _FirstFlutterScreenState extends State<FirstFlutterScreen> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
        brightness: Brightness.dark,
        elevation: 0
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple[700],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(
                  'assets/ninja.jpg'
                ),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.purple[700],
              thickness: 1,
            ),
            Text(
              "NAME",
              style: TextStyle(
              color: Colors.grey[600],
              letterSpacing: 2
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Chun-li",
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.purple[700],
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.purple[700],
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 10),
                Text(
                  "chun.li@theninja.com",
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.grey[600],
                    fontSize: 18.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
