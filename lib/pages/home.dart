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

    String bgImage = data?['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgColor = data?['isDaytime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[300],
                ),
                label: Text(
                  "Edit Location",
                  style: TextStyle(color: Colors.grey[300]),
                ),
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
                        color: Colors.white,
                      ),
                    )
                  else
                    Text(
                      'Location Not Available',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        color: Colors.white,
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
                    color: Colors.white,
                  ),
                )
            ],
          ),
        ),
      )),
    );
  }
}
