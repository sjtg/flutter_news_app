import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {


  List headlines = await getNews();
  print(headlines);
  //Run the MaterialApp widget


  runApp(new MaterialApp(
    // Displays the first widget when the application starts
    
    home: new Center(
      //This widget is nested inside the center widget
      child: new Text('News app'),
    ),
    
  ));


}

 Future<List> getNews()async {
  // String for the api url
  String apiUrl = 'https://newsapi.org/v2/sources?apiKey=f6f9f35fe98449f3b0d2a69035ac86f4';

  http.Response response = await http.get(apiUrl);

  return JSON.decode(response.body);
}