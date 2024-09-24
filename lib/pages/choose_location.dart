import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState Function Ran');
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
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
