import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    print(data);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text("Edit Location"),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (data != null && data.containsKey('location'))
                  Text(
                    data['location'],
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                    ),
                  )
                else
                  Text(
                    'Location Not Available',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            if (data != null && data.containsKey('time'))
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                ),
              )
          ],
        ),
      )),
    );
  }
}
