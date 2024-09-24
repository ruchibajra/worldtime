import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'web developer';
    });

    print(
        '$username - $bio'); //username fn must load and finish in order to move to bio fn.
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build Function Ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0, //removes box shadow
      ),
    );
  }
}
