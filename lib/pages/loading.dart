import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    // Correctly parse the URL using Uri.parse
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading"),
      ),
    );
  }
}
